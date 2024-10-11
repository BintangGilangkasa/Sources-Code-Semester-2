def lingkaran_keliling(d):
    keliling = 22/7 * 2 * d
    return keliling

def lingkaran_luas(d):
    luas = 22/7 * d ** 2
    return luas

angka = int(input("Masukkan jari-jari : "))

keliling = lingkaran_keliling(angka)
luas = lingkaran_luas(angka)

print (f"Keliling : {keliling:.2f} dan luas {luas:.2f}")


