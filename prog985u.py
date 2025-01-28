class Quicksort:
    @staticmethod
    def sort(A, low=0, high=None):
        if high is None:
            high = len(A)-1
        if low < high:
            pivot = Quicksort.partition(A, low, high)
            Quicksort.sort(A, low, pivot-1)
            Quicksort.sort(A, pivot+1, high)
        return A

    @staticmethod
    def partition(A, low, high):
        pivot = A[high]
        i = low-1
        for j in range(low, high):
            if A[j] <= pivot:
                i += 1
                Quicksort.swap(A, i, j)
        Quicksort.swap(A, i+1, high)
        return i+1

    @staticmethod
    def swap(A, i, j):
        temp = A[i]
        A[i] = A[j]
        A[j] = temp
