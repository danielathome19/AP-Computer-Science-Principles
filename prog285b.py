from cl285b import Salesperson

def main():
    try:
        print("Number    Code    Sales    Commission")
        people = []
        with open("data/prog285b.txt", 'r') as file:
            for line in file:
                ldata = line.split(" ")
                id    = int(ldata[0])
                code  = int(ldata[1])
                sales = float(ldata[2])
                dude  = Salesperson(id, code, sales)
                # List comprehension
                # id, code, sales = [float(x) for x in line.split(' ')]
                # id, code, sales = [float(x) if '.' in x else int(x) for x in line.split(' ')]
                people.append(dude)
        for sp in people:  # for-each
            sp.calc()
            print(sp)  # print(str(sp))
    except Exception as e:
        print("Error:", e)

if __name__ == "__main__":
    main()
