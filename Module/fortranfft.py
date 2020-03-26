import numpy as np
from fmodule import fortranfft as f

def fft(x):
    x = np.asarray(x)
    N = x.shape[0]
    exp_factors = f.generate_exp(N)
    return f.fft(x, exp_factors)

def fft2(x):
    x = np.asarray(x)
    N = x.shape[0]
    M = x.shape[1]

    if M == N:
        exp_factors = f.generate_exp(N)
        return f.fft2(x, exp_factors)
    else:
        raise ValueError("2D array must be square-shaped.")
