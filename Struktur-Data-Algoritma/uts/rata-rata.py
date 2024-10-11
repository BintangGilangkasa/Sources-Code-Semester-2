#Inisiasi Variabel untuk menyimpan di tital dan count
total = 0
count = 0

#Membuat pengguna untuk memasukkan bilangan
print ("Masukan bilangan (ketik 'selesai' jika sudah cukup) : ")

while True:
    input_number = input("Masukkan Bilangan anda : ")

    if input_number.lower() == "selesai":
        break

    try:
        angka = float(input_number)
        total += angka
        count += 1

    except ValueError:
        print ("Input yang anda masukkan salah, mohon input lagi")
        continue

if count > 0:
    average = total/count
    print (f"Rata-rata dari {total} adalah {average:.2f}")
else:
    print ("Tidak ada bilangan yang di input")






