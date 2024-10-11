def faktorial(n):
    if n == 0:
        return 1
    else:
        hitung = n * faktorial(n - 1)
        return hitung

angka = int(input("Masukkan Angka : "))

print (f"Faktorial dari {angka} adalah {faktorial(angka)}")
