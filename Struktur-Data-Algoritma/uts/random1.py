total = 0
count = 0

while True:
    input_angka = input("Masukan Angka : ")

    if input_angka.lower()=='selesai':
        break

    try:
        angka = float(input_angka)
        total += angka
        count += 1
    except ValueError:
        print ("Masukan angka terlebih dahulu")
    
if count > 0:
    average = total / count
    print (f"rata-rata dari {count} adalah {average}")
else:
    print ("Tidak ada isi")