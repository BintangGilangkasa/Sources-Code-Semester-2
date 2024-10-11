def hitung(fi, x):
    rumus =  fi (x - 40.05)**2
    return rumus

fi = float(input("fi :"))
x = float(input("x :"))

print (f"total : {hitung(fi, x)}")