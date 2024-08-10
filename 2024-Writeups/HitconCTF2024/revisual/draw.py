import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
d = [0x4, 0x14, 0x17, 0xd, 0xb, 0x0, 0xf, 0x1, 0xe, 0x15, 0x9, 0x13, 0x8, 0x3, 0x11, 0x18, 0x10, 0x6, 0x16, 0xa, 0x7, 0x12, 0x2, 0x5, 0xc];

def plot_triangles(vertices_list):
    # Create a figure and a 3D Axes
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    for vertices in vertices_list:
        X = np.array(vertices[0])
        Y = np.array(vertices[1])
        Z = np.array(vertices[2])
        x_coords = [X[0], Y[0], Z[0], X[0]]
        y_coords = [X[1], Y[1], Z[1], X[1]]
        z_coords = [X[2], Y[2], Z[2], X[2]]
        ax.plot(x_coords, y_coords, z_coords)

    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.set_title('3D Triangles')
    ax.set_xlim(-1.0,1.0)
    ax.set_ylim(-1.0,1.0)
    ax.set_zlim(0,25.0)
    # Show plot
    plt.show()
    

# Example list of triangles (each triangle represented by three points)
num0 = 2.1235656756
num1 = 2.12312312312
# num2 = 21

num0 = (num0 % 0x1 + d[int(num0)])
num1 = (num1 % 0x1 + d[int(num1)])
# num2 = (num2 % 0x1 + d[int(num2)]) * 650 / 0x19
triangles = [
    [[-0x1, -0x1, num0], [-0x1, 0x1, num1], [0x1, 0x1, num1]],
    [[-0x1, -0x1, num0], [0x1, 0x1, num1], [0x1, -0x1, num0]],
    # [[-0x1, -0x1, num0], [0x3, -0x1, num1], [-0x1, 0x3, num2]]
]
plot_triangles(triangles)