# 0 1 1 2 3 5 8 13 21

def iter_fibs(num):
    if num < 1: return []
    arr = []
    if num >= 1: arr.append(0)
    if num >= 2: arr.append(1)
    for n in range(2, num):
        arr.append(arr[-1] + arr[-2])
    return arr
    
print iter_fibs(20)
    
def recurs_fibs(num):
    if num == 0: return []
    if num == 1: return [0]
    if num == 2: return [0, 1]
    fibs = recurs_fibs(num - 1)
    fibs.append(fibs[-1] + fibs[-2])
    return fibs
    
print recurs_fibs(20)