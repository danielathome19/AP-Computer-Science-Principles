import mylibrary
import math
import numpy as np  # pip install numpy
# from mylibrary import area, perim

arr = np.array([1, 2, 3])
arr2 = np.array([6, 7, 8])
print(np.sum(arr * arr2))
print(np.dot(arr, arr2))

print(math.hypot(3, 4))

len = 5
wid = 10
a = mylibrary.area(len, wid)
p = mylibrary.perim(len, wid)
print(f"Area: {a}   Perimeter: {p}")
