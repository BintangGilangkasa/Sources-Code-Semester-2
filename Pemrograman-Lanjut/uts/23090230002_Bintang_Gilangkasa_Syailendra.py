class hitung_hasil:
    def __init__(self):
        self.pilihan = {
            1: self.hitung_lingkaran,
            2: self.hitung_persegi,
            3: self.hitung_persegi_panjang
        }

# Menghitung luas dan keliling lingkaran
    def hitung_lingkaran(self):
        radius = float(input("Masukkan radius lingkaran: "))
        luas_lingkaran = 3.14 * radius * radius
        keliling_lingkaran = 2 * 3.14 * radius
        print("Luas lingkaran : ", luas_lingkaran)
        print("Keliling lingkaran : ", keliling_lingkaran)

 # Menghitung luas dan keliling persegi
    def hitung_persegi(self):
        sisi = float(input("Masukkan panjang sisi persegi: "))
        luas_persegi = sisi * sisi
        keliling_persegi = 4 * sisi
        print("Luas persegi : ", luas_persegi)
        print("Keliling persegi : ", keliling_persegi)

# Menghitung luas dan keliling persegi panjang
    def hitung_persegi_panjang(self):
        panjang = float(input("Masukkan panjang persegi panjang: "))
        lebar = float(input("Masukkan lebar persegi panjang: "))
        luas_persegi_panjang = panjang * lebar
        keliling_persegi_panjang = 2 * (panjang + lebar)
        print("Luas persegi panjang : ", luas_persegi_panjang)
        print("Keliling persegi panjang : ", keliling_persegi_panjang)

    def tampilan(self):
        print("Pilih bentuk geometri untuk menghitung luas dan keliling:")
        print("1. Lingkaran")
        print("2. Persegi")
        print("3. Persegi panjang")
        pilih = int(input("Masukkan pilihan (1-3) : "))

        if pilih in self.pilihan:
            self.pilihan[pilih]()
        else:
            print ("Pilihan tidak valid. Masukkan angka 1, 2, atau 3.")

kalkulator = hitung_hasil()
kalkulator.tampilan()
    

        
    