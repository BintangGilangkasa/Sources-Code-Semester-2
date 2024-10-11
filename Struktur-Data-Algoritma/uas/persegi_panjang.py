def keliling(panjang, lebar):
    keliling = 2 * (panjang + lebar)
    return keliling

def luas(panjang, lebar):
    luas = (panjang + lebar)
    return luas

p = int(input("Panjang : "))
l = int(input("Lebar : "))

print (f"keliling : {keliling(p, l)} dan Lebar : {luas(p, l)}")
