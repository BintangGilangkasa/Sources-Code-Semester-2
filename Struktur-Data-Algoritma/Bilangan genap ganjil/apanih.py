def genapganjil(x):
        if x % 2 == 0:
                return ("Bilangan Genap")
        else:
                return ("Bilangan Ganjil")
try:
        pilih = int(input("Masukan Angka yang anda inginkan : "))
        hasil = genapganjil(pilih)
        print (f"Angka anda masuk dalam {hasil}")
        
except ValueError:
        print("Yang anda masukkan tidak valid")



