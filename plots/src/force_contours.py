#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt
from matplotlib2tikz import save

x, y = np.mgrid[-50:50.1:.5, -50:50.1:.5]
z = 0.11 * np.power(1.1, (np.sqrt(np.square(x) + np.square(y))) / 2.5)

c = plt.contourf(x, y, z, 20)
plt.colorbar(c)

plt.xlabel("Angle of x shaft ($^\circ$)")
plt.ylabel("Angle of y shaft ($^\circ$)")

# plt.show()
save('../test.tikz')