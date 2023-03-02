from numpy import sin, cos, pi, exp, empty, mean, abs, angle # Sentrale matematiske funksjoner
import numpy as np                          # Importer funksjonalitet fra numpy biblioteket med prefiks "np"
import scipy.signal as sig                  # Importerer signalbehandlingsmodulen til scipy
import matplotlib.pyplot as plt             # Importer pyplot modulen i matplotlib med prefiks "plt"
from scipy.io import wavfile
from chatTriangulation import SoundTriangulation



samplerate, data = wavfile.read('lyd_filer/shhtut_10.wav')
xn_rx_1 = data.T[0] / 0x7FFF
xn_rx_2 = xn_rx_1[117:]
xn_rx_3 = xn_rx_1
xn_rx_1 = xn_rx_1[502:]

samplerate, data = wavfile.read('lyd_filer/tutut_2.wav')
pulse = data.T[0]/0x7FFF

# Define the side length of the equilateral triangle
triangle_side_length = 1.0  # in meters

# Define the positions of the three microphones as 3D coordinates
mic_positions = np.array([
    [0.0, 0.0, 0.0],  # Microphone 1 at the origin
    [triangle_side_length, 0.0, 0.0],  # Microphone 2 at (1, 0, 0)
    [triangle_side_length/2, triangle_side_length*np.sqrt(3)/2, 0.0],  # Microphone 3 at (0.5, sqrt(3)/2, 0)
])

st = SoundTriangulation(mic_positions)

def convolve(signal):
    yn = sig.correlate(signal, pulse)
    return yn

def sample_to_time(sample):
    t = sample/samplerate
    return t

print("samplerate:", samplerate)
print("Antall sampler:", len(xn_rx_1))

#def sample_to_time(signal, periode):



yn1 = convolve(xn_rx_1)
yn2 = convolve(xn_rx_2)
yn3 = convolve(xn_rx_3)

sample1 = np.argmax(yn1)-len(pulse)+1
sample2 = np.argmax(yn2)-len(pulse)+1
sample3 = np.argmax(yn3)-len(pulse)+1

t1 = sample_to_time(sample1)
t2 = sample_to_time(sample2)
t3 = sample_to_time(sample3)

print("Mic1 starter:", sample1, "time:", round(t1, 3), "offsett(s):", 0)
print("Mic2 starter:", sample2, "time:", round(t2, 3), "offsett(ms):", round(t2-t1, 4)*10**3)
print("Mic3 starter:", sample3, "time:", round(t3, 3), "offsett(ms):", round(t3-t1, 4)*10**3)
#--------------------------------------------------------------------------

plt.close(2); plt.figure(2, figsize=(9, 3))
plt.plot(yn1, color='blue')
plt.plot(yn2, color='red')
plt.plot(yn3, color='green')
plt.xlabel(r'Tid ($s$)')
plt.title(r'Filtrert innkommende signal $y(t_n)$')
plt.grid(True)
plt.tight_layout()
plt.show()

#--------------------------------------------------------------------------
# Chatgpt based code
doa1 = float((t2-t1))
doa2 = float((t3-t1))
tdoas = [0.0, doa1, doa2]


# print(st._get_direction(delays=tdoas))
# This class takes the following parameters in the constructor:
#
# mic_positions: The positions of the microphones as an Nx3 array, where N is the number of microphones.
# sound_speed: The speed of sound in m/s.
# To estimate the direction of an incoming signal, the estimate_direction method is called with an array of time differences of arrival (TDOAs) at the microphones. The TDOAs should be in seconds, with the first microphone as the reference. The method returns a unit vector pointing in the direction of the incoming signal.
#
# The algorithm used by this class assumes that the speed of sound is constant and that the microphones are synchronized. It also assumes that the incoming signal is a plane wave and that the microphones are far apart compared to the wavelength of the sound.




