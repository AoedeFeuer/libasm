# LIBASM #

## Project goal ##

Rewrite some library functions with 64 bits ASM and the Intel syntax. Use Makefile to compile with nasm into the library called libasm.a.

No addition callings are allowed except malloc, ___error or errno_location.

### Mandatory part ###
✅ ft_write (man 2 write)
✅ ft_read (man 2 read)
✅ ft_strlen (man 3 strlen)
✅ ft_strcpy (man 3 strcpy)
✅ ft_strcmp (man 3 strcmp)
✅ ft_strdup (man 3 strdup, you can call to malloc)

### Bonus part ###
✅ ft_list_size (like the one in the piscine)
✅ ft_list_push_front (like the one in the piscine)
❌ ft_list_remove_if (like the one in the piscine)
❌ ft_list_sort (like the one in the piscine)
❌ ft_atoi_base (like the one in the piscine)

***

__Final grade: *110/125*__