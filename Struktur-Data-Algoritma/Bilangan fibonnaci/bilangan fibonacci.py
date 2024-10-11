#Untuk mengetahui bahwa kita ingin mendefinisikan sebuah fungsi
def fibonacci():

#Untuk memasukankan dalam List
    angka_awal = [0,1]

#Untuk menghasilkan deret fibonacci
    for i in range (10):

#Menghitung angka Fibonacci selanjutnya dengan menambahkan dua angka terakhir dari deret Fibonacci
        next_fibon = angka_awal[-1] + angka_awal[-2] 

#Memasukkan hasil ke next_fibon
        angka_awal.append(next_fibon)
    return angka_awal

#Memunculkan Hasil dari perintah kita
print ("Hasil : ", fibonacci())


