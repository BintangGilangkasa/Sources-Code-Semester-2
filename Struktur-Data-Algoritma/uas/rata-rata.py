# Inisialisasi variabel untuk menyimpan total dan jumlah bilangan
total = 0
count = 0

# Meminta pengguna untuk memasukkan bilangan-bilangan
print("Masukkan bilangan (ketik 'selesai' untuk berhenti):")

while True:
    input_number = input("Masukkan bilangan: ")
    
    # Jika pengguna mengetik 'selesai', hentikan program
    if input_number.lower() == 'selesai':
        break
    
    # Konversi input pengguna menjadi float
    try:
        number = float(input_number)
        total += number
        count += 1
    except ValueError:
        print("Input yang dimasukkan bukan bilangan. Silakan coba lagi.")
        continue

# Hitung rata-rata
if count > 0:
    average = total / count
    print(f"Rata-rata dari {count} bilangan adalah: {average:.2f}")
else:
    print("Tidak ada bilangan yang dimasukkan.")