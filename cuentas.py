def error(d, h, p, ep, ed, eh):
    izq = (d**2/4) * h * ep
    med = p * (d / 2) * ed
    der = p * (d**2 / 4) * eh
    res = izq + med + der
    return res

print(error(2.213, 4.400, 3.14, 0.01, 0.002, 0.002))
print(error(2.1  , 4.3  , 3.14, 0.01, 0.1  , 0.1))
print(error(2.0  , 4    , 3.14, 0.01, 1    , 1))
