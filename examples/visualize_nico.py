import os
import matplotlib.pyplot as plt
from PIL import Image
import glob
import time

script_dir = os.path.dirname(os.path.abspath(__file__))
img_folder = os.path.join(script_dir, "../output/bouncing_balls")
imgs = sorted(glob.glob(os.path.join(img_folder, "rgba_*.png")))

print(f"Found {len(imgs)} images in {img_folder}")

plt.ion()  # modalità interattiva
fig, ax = plt.subplots()

for img_path in imgs:
    img = Image.open(img_path)
    ax.imshow(img)
    ax.axis('off')
    plt.pause(0.04)  # 24 FPS ≈ 0.04s per frame
    ax.clear()

plt.ioff()
plt.show()