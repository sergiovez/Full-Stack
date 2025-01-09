### REGLAS
# 1. Solo un disco a la vez
# 2. No puede habeer un disco mas grande encima de uno mas pequeño
# 3. El minimo de movimientos para lograrlo es 2**(n-1)
# Torres
    # 1: Origen
    # 2: Auxiliar
    # 3: Destino
def torre_Hanoi(discos, origen, destino, auxiliar):
    # caso base
    if discos ==1:
        print(f'Mover el disco {discos} de la torre de {origen} a la torre de {destino}')
        return
    # mover n-1 discos de origen a auxiliar
    torre_Hanoi(discos-1, origen, auxiliar, destino)
    print(f'Mover el disco {discos} de la torre de {origen} a la torre de {destino}')
    torre_Hanoi(discos-1, auxiliar, destino, origen)

torre_Hanoi(3, "origen", "destino", "auxiliar")