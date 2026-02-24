N = int(input("Enter Number N: "))

for row in range(0,N):
    for col in range(0,N):
        if row == col:
            print("X", end = ' ')
        elif (row + col) % 2 == 0:
            print("1", end = ' ')
        else:
            print("0", end = ' ')
    print()
