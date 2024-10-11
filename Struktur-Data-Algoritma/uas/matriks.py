def input_matrix(rows, cols, matrix_number):
    matrix = []
    print(f"Masukkan elemen-elemen matriks {matrix_number} ({rows}x{cols}):")
    for i in range(rows):
        row = []
        for j in range(cols):
            row.append(int(input(f"Masukkan elemen [{i+1}][{j+1}]: ")))
        matrix.append(row)
    return matrix

def print_matrix(matrix):
    for row in matrix:
        print(" ".join(map(str, row)))

def multiply_matrices(A, B):
    result = [[0 for _ in range(len(B[0]))] for _ in range(len(A))]
    for i in range(len(A)):
        for j in range(len(B[0])):
            for k in range(len(B)):
                result[i][j] += A[i][k] * B[k][j]
    return result

# Meminta input untuk ukuran matriks
rows_A = int(input("Masukkan jumlah baris matriks A: "))
cols_A = int(input("Masukkan jumlah kolom matriks A: "))
rows_B = int(input("Masukkan jumlah baris matriks B: "))
cols_B = int(input("Masukkan jumlah kolom matriks B: "))

# Validasi ukuran matriks
if cols_A != rows_B:
    print("Jumlah kolom matriks A harus sama dengan jumlah baris matriks B untuk perkalian matriks.")
else:
    # Memasukkan elemen matriks
    matrix_A = input_matrix(rows_A, cols_A, 'A')
    matrix_B = input_matrix(rows_B, cols_B, 'B')

    # Mengalikan matriks
    result_matrix = multiply_matrices(matrix_A, matrix_B)

    # Menampilkan hasil
    print("Hasil perkalian matriks A dan B adalah:")
    print_matrix(result_matrix)
