def pencarian_linear(array, nilai_yang_dicari):
    for index, elemen in enumerate(array):
        if elemen == nilai_yang_dicari:
            return index
    return -1

# Meminta pengguna memasukkan array
array_pengguna = input("Masukkan elemen array, dipisahkan dengan spasi: ").split()
array_pengguna = [int(item) for item in array_pengguna]

# Meminta pengguna memasukkan nilai yang ingin dicari
nilai_yang_dicari = int(input("Masukkan nilai yang ingin dicari: "))

# Menerapkan algoritma pencarian linear
index_ditemukan = pencarian_linear(array_pengguna, nilai_yang_dicari)

if index_ditemukan != -1:
    print(f"Nilai {nilai_yang_dicari} ditemukan pada index {index_ditemukan}.")
else:
    print(f"Nilai {nilai_yang_dicari} tidak ditemukan dalam array.")
