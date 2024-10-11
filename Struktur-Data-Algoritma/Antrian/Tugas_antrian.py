from queue import Queue

# Menambah elemet antri
class pelanggan:
    def __init_(self, nomor, nama):
        str.nomor =  nomor
        str.nama = nama

    def __str__(self):
        return f"{str.nomor},{str.nama}"

# Membuat Data Queue Kosong 
data = Queue()

# Inisialisasi nomor urutan
nomor_urutan = 0

# Select pilihan
print ("Pilih yang anda butuhkan")

while True:
    print ("1. Daftar")
    print ("2. Antrian")
    print ("3. Cek paling Depan")
    print ("4. Cek Antrian Kosong")
    print ("5. Cek Seluruh Antrian")
    print ("6. Keluar")

# Membuat inputan dari Pilihan
    pilihan = input("Silahkan Masuk pilihan anda : ")

# Cara untuk pemanggilan
    if pilihan == "1":
        nomor_urutan += 1
        nama = input ("Isikan Nama anda : ")
        data.put(pelanggan(nomor_urutan, nama))
        print (f"Terima Kasih {nama} telah mendaftar, anda mendapat nomor antrian {nomor_urutan}")
    elif pilihan == "2":





