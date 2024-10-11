def apakah_prima(n):
    if n <= 1:
        return ("Bukan Bilangan Prima")
    
    if n == 2:
        return ("Bilangan Prima")
    
    if n % 2 == 0:
        return "Bukan Bilangan prima"
    
    else:
        for i in range(3, int(n**0.5) + 1, 2):
            if n % i == 0:
                return ("Bukan Bilangan Prima")
            
    return ("Bilangan Prima")

# Uji beberapa bilangan
angka = int(input("Masukkan angka : "))
print (f"{angka} adalah {apakah_prima(angka)}")
