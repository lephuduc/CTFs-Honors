# Midnight Sun 2023
## Rev: Open Source Software

The file `oss-modded.c` is the code I was renamed and format, so it 
look readable.

This code using 3 buffer to save result of some macro like this:

![image](https://user-images.githubusercontent.com/88520787/230807405-c60db9d4-c8e8-4a45-9f01-d7eaddd047bf.png)

But that code was fake. 

![image](https://user-images.githubusercontent.com/88520787/230807599-14c5ebea-497b-4404-b4b3-6a59f78b9f21.png)

The `check2` function are check 2 consecutive characters:

`flag[8]_flag[9], flag[10]_flag[11],...`

So if we have one of these character, we can bruteforce to find another character.

Next, `check3` was use to check 4 character like:

`flag[17]_flag[19]_flag[21]_flag[23],...`

I don't care about buf1 because it same to check the format flag (some first characters).

So i decided to brute by hand, waste of time, but it works :V 

![image](https://user-images.githubusercontent.com/88520787/230808384-24201fcc-300e-4dfc-823f-c8b1894e000c.png)

The brute script is `test.c` and file `test.py` just a note.

## Rev: Pressure

This file contain 2 resources and the file trying to decompress them.

This code have a function check first 2 character of our flag:

![image](https://user-images.githubusercontent.com/88520787/230809293-ff4c1459-19da-45d5-9242-1f75eba50ca1.png)

If true, they will uisng `fexecve()` to run 1 of the decompressed resources.

![image](https://user-images.githubusercontent.com/88520787/230809345-87e145a6-3ae7-4f37-b85f-4fc7d6a0e140.png)

So, I was brute 2 char and trying to get that bytes after decompress, write out a file, open that file by IDA and that file look same with the first file, but has different `check` function:

![image](https://user-images.githubusercontent.com/88520787/230809710-e124cacf-f573-4e8e-ae05-2d5947530749.png)


I was brute 2 char each time, until I see this `check` on 6th file:

![image](https://user-images.githubusercontent.com/88520787/230809828-04ac67dd-e4f2-485b-9cfa-2779ac3a97e5.png)

That means the are serveral pair of 2 char was pass it, the flag is: `u_b34t_th3_c--ck` with -- is unknown character.

I was trying to guess these character, `u_b34t_th3_ch3ck`, `u_b34t_th3_cr4ck`,... but it incorrect. So I decided to check with admin:

![image](https://user-images.githubusercontent.com/88520787/230810131-8ab63a4f-e261-485c-ac73-cf9879be8570.png)

Flag: `midnight{u_b34t_th3_cl0ck}`
The challenge was good, but a little guessy...





