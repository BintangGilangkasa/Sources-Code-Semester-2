def faktorial(x):
    if x == 0:
        return 1
    else:
        return x * faktorial (x-1)
        pass
pilih = int(input("Masukkan angka : "))
hasil = faktorial(pilih)

print (f"Angka yang anda pilih {pilih}, total {hasil}")