import numpy as np

print('\nEcuacion Lineal:\n2x + y - 3z + w + 4u - 5v = -2\nx - y + 2z - 2w + u + 3v = 1\n3x + 2y - 4z + 4w - u + 2v = 5\nx - 3y + 2z - w + 5u - 4v = 8\n-2x + 4y - z + 3w - 2u + v = -3\nx - 2y + z - 4w + u - v = 2\n')

A = [[2,1,-3,1,4,-5],[1,-1,2,-2,1,3],[3,2,-4,4,-1,2],[1,-3,2,-1,5,-4],[-2,4,-1,3,-2,1],[1,-2,1,-4,1,-1]]
print('Matrix: \n', A, '\n')

B = [[-2],[1],[5],[8],[-3],[2]]
print('Igualacion: \n', B, '\n')

Inv_A = np.linalg.inv(A)
print('Matrix Inversa: \n',Inv_A,'\n')

Solucion= np.dot(Inv_A,B)
print('Soluciones:')

for sol in Solucion:
    print(sol)
print()

    # 2x + y - 3z + w + 4u - 5v = -2
    # x - y + 2z - 2w + u + 3v = 1
    # 3x + 2y - 4z + 4w - u + 2v = 5
    # x - 3y + 2z - w + 5u - 4v = 8
    # -2x + 4y - z + 3w - 2u + v = -3
    # x - 2y + z - 4w + u - v = 2