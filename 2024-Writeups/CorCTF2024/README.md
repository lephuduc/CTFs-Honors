### rev/corMine: The Beginning

This challenge is like the Minecraft game but they coded in Rust.

The target of the challenge is to find a way to get in the box. The box looks like bedrock in Minecraft and is impossible to break. So we need to reverse these entire rust challenges :((


![alt text](image.png)

After a day, I found a way that we could get in the box by teleport. To do it, we need to find where's the coordinates.

I follow the code on these functions (handle player move) and then patch it.

![alt text](image-1.png)

Easily change these values (it's float)

![alt text](image-2.png)

![alt text](image-3.png)

So, just load the game, pause at the start (on top of the `box`), change the `y` coordinate to `y-10` and read the flag easily.

![alt text](image-4.png)