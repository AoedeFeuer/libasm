# 💾 💾 💾 LIBASM 💾 💾 💾 #

## Project goal ##

Rewrite some library functions with 64 bits ASM and the Intel syntax. Use Makefile to compile with nasm into the library called libasm.a.

No addition callings are allowed except *malloc*, *___error* or *errno_location*.

### Mandatory part ###
✅ ft_write (man 2 write)<br>
✅ ft_read (man 2 read)<br>
✅ ft_strlen (man 3 strlen)<br>
✅ ft_strcmp (man 3 strcmp)<br>
✅ ft_strcpy (man 3 strcpy)<br>
✅ ft_strdup (man 3 strdup, you can call to malloc)<br>

### Bonus part ###
✅ ft_list_size (like the one in the piscine)<br>
✅ ft_list_push_front (like the one in the piscine)<br>
❌ ft_list_remove_if (like the one in the piscine)<br>
❌ ft_list_sort (like the one in the piscine)<br>
❌ ft_atoi_base (like the one in the piscine)<br>

### Some thoughts about topic ###

To complete this project successfully, you should understand, what type of problem we need to solve.<br>
I personally recommend writing functions in the order they're listed above.<br><br>
> -> By working on ***ft_write*** and ***ft_read***, you're dealing with syscalls, errno and how nasm code must be orginize.<br>
> -> ***ft_strlen*** - how counter works, how to write loops and how to return values from functions <br>
> -> ***ft_strcmp*** - how to compare two blocks of memory, how to calculate <br>
> -> ***ft_strcpy*** - how to transfer values from one block of memory to another<br>
> -> ***ft_strdup*** - how to extern functions (ft_strlen, ft_strcpy, malloc), how to call functions (calling convention) <br>


> -> ***ft_list_size*** - the only difference with ft_strlen is lenght of struct - <br>
> -> ***ft_list_push_front*** - how to work with pointers and how to malloc block of memory for struct<br>
> -> ***ft_list_remove_if***  - how to compare two blocks of memory and how to free block of memory <br>
> -> ***ft_list_sort*** - sort list with asm<br>
> -> ***ft_atoi_base*** - rewrite atoi base (deal with calculations)<br>


### Useful links ###

 Links | About
 --- | ---
 *https://cs.lmu.edu/~ray/notes/nasmtutorial/*                                                             | first step in nasm                
 *https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf*                                       | great cheatsheet                  
 *https://www.cs.uaf.edu/2015/fall/cs301/lecture/09_25_structs.html*                                       | Data Structures in Assembly       
 *https://github.com/HudsonSchumaker/x86_64-NASM/blob/master/macOS-nasm-codes.md*                          | NASM Assembler codes for macOS    
 *https://learn.microsoft.com/en-us/cpp/build/x64-software-conventions?redirectedfrom=MSDN&view=msvc-170*  | calling convention                

***

__Final grade: *110/125*__