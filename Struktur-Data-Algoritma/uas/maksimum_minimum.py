isi = []

print ("Masukan bilangan anda yang diingin")

while True:
    input_angka = input("Masukan Bilangan : ")

    if input_angka.lower() == "selesai":
        break

    try:
        angka = float(input_angka)
        isi.append(angka)
        
    except ValueError:
        print ("Bilangan Invalid, coba masukkan lagi")
        continue

if isi:
    maksimum = max(isi)
    minimum = min(isi)
    print (f"Nilai Maksimum adalah {maksimum}")
    print (f"Nilai Minimum adalah {minimum}")
else:
    print ("Tidak ada Bilangan yang dimasukkan")
