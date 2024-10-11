# Meminta pengguna untuk memasukkan bilangan
number = float(input("Masukkan bilangan: "))

# Menentukan apakah bilangan ganjil atau genap
if number % 2 == 0:
    print(f"Bilangan {number} adalah bilangan genap.")
else:
    print(f"Bilangan {number} adalah bilangan ganjil.")