# Membuat class yang bernama Mobil
class Mobil:
    
    # Constructor dengan atribut
    def __init__(self, merk, tahun, warna):
        self.atr_merk = merk
        self.atr_tahun = tahun
        self.atr_warna = warna
    
    # Metode untuk menampilkan merk mobil
    def Merkmobil(self):
        return f"Merk mobil ini adalah {self.atr_merk}."
    
    # Metode untuk menampilkan tahun mobil
    def Tahunmobil(self, UbahTahun):
        self.atr_tahun = UbahTahun
        return f"Tahun mobil ini adalah {self.atr_tahun}."
    
    # Metode untuk mengubah warna mobil
    def Ubahwarna(self, WarnaBaru):
        self.atr_warna = WarnaBaru
        return f"Warna telah diubah menjadi {self.atr_warna}."

# Membuat objek mobil
mobil1 = Mobil("Toyota", 2020, "Merah")

# Memanggil metode untuk menampilkan merk mobil
print(mobil1.Merkmobil())

# Memanggil metode untuk menampilkan tahun mobil
print(mobil1.Tahunmobil(2005))

# Memanggil metode untuk mengubah warna mobil
print(mobil1.Ubahwarna("Biru"))
