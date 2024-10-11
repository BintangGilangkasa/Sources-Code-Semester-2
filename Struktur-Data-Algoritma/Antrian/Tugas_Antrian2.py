from queue import Queue

# Membuat kelas untuk menyimpan data pelanggan
class Pelanggan:
    def __init__(self, nomor, nama):
        self.nomor = nomor
        self.nama = nama

    def __str__(self):
        return f"{self.nomor}, {self.nama}"

# Inisialisasi antrian dan nomor urutan
Data = Queue()
nomor_urutan = 0

# Daftar Sebuah Pilihan
while True:
    print(" ")
    print("""Selamat Datang
Silihkan pilih sesuai kebutuhan anda :""")
    print("="*30)
    print("1. Daftar")
    print("2. Antrian")
    print("3. Lihat antrian terdepan")
    print("4. Cek antrian")
    print("5. List antrian")
    print("6. Keluar")
    print("="*30)

# Inputan untuk memilih Daftar
    pilihan = input("Masukkan pilihan Anda : ")

# Syntax untuk output sebuah hasil
    if pilihan == '1':
        nomor_urutan += 1
        nama = input("Masukkan Nama : ")
        Data.put(Pelanggan(nomor_urutan, nama))
        print(f"Terima kasih {nama}, Anda telah terdaftar dengan nomor Antrian {nomor_urutan}")
    elif pilihan == '2':
        if not Data.empty():
            pelanggan = Data.get()
            print(f"Antrian {pelanggan} silakan maju")
        else:
            print("Antrian kosong")
    elif pilihan == '3':
        if not Data.empty():
            print(f"Antrian terdepan adalah : {Data.queue[0]}")
        else:
            print("Antrian kosong")
    elif pilihan == '4':
        if Data.empty():
            print("Antrian kosong")
        else:
            print("Antrian tidak kosong")
    elif pilihan == '5':
        if Data.empty:
            print ("Daftar yang mengantri : ")
            for pelanggan in list(Data.queue):
                print (pelanggan)
        else:
            print ("Antrian Kosong")
    elif pilihan == '6':
        print ("Terima Kasih Sudah Berkunjung")
        break
    else:
        print("Pilihan tidak valid. Silakan coba lagi.")