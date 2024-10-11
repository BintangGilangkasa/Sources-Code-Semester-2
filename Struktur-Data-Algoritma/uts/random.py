Isi = []

while True:
    input_angka = (input("Masukan Bilangan : "))

    if input_angka.lower() == 'selesai':
        break
    
    else:
        Isi.append(int(input_angka))


maksimal = max(Isi)
minimal = min(Isi)

print ("Maksimal adalah", maksimal)
print ("Minimal adalah", minimal)



