import wave
import numpy as np

wav_file = 'sample.wav'

with wave.open(wav_file, 'rb') as wf:
    sample_rate = wf.getframerate()
    
    total_frames = wf.getnframes()
    wave_data = wf.readframes(total_frames)
wave_array = np.frombuffer(wave_data, dtype=np.int16)
print(wave_array)
samples_per_10ms = int(0.01 * sample_rate)
print(samples_per_10ms)
bins = ""
for i in range(0, total_frames, samples_per_10ms):
    segment = wave_array[i:i + samples_per_10ms]
    spectrum = np.fft.fft(segment)
    magnitudes = np.abs(spectrum)
    max_index = np.argmax(magnitudes)
    frequency = max_index * sample_rate / samples_per_10ms
    if frequency==2400.0:
        bins+="1"
    elif frequency==1200.0:
        bins+="0"
    else:
        bins+="-"
    # print(frequency)
bins = bins.replace('-','')
byte_data = bytes(int(bins[i:i+8], 2) for i in range(0, len(bins), 8))
print(byte_data)