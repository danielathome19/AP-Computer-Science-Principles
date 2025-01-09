# Import time, your sorting library, and your helper class


def main():
    try:
        data = []
        with open("data/prg408a.txt", 'r') as f:
            lines = f.readlines()
            for line in lines:
                id, score = line.split(' ')
                id = int(id)
                score = int(score)
                # Make helper class objects and add to data
        # TODO: Your code here
        ...
    except Exception as e:
        print("Error:", e)
    pass


if __name__ == "__main__":
    main()
