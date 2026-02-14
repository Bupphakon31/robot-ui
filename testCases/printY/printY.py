def Print(y):
    for i in range(y):
        for j in range(y):
            if j == 0 or j == y - 1 or j == i:
                print("X", end=" ")
            else:
                print("O", end=" ")
        print()

if __name__ == "__main__":
    Print(5)
    print()
    Print(7)