# Meminta pengguna untuk memasukkan suhu dalam Celcius
celsius = float(input("Masukkan suhu dalam Celcius: "))

# Konversi suhu Celcius ke Fahrenheit
fahrenheit = (celsius * 9/5) + 32

# Tampilkan hasil konversi
print(f"{celsius}°C adalah {fahrenheit:.2f}°F")