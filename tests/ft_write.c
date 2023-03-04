#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
ssize_t ft_write(int fd, void *buf, size_t count);

int main()
{
    char str[10][100] = {
		"lol",
		"lol\x00lol",
		"",
		"0123456789ABCDEF",
		"0123456789ABCDE"
	};
//	printf("Write return: %d\n", ft_write(15, "wrong file descriptor", 3));
//  printf("Error code: %d\n", errno);  return(1);
    for (int index = 0; index < 5; index++) {
        size_t size = strlen(str[index]);
	    int ret = ft_write(1, str, size);
	    write(1, "\n", 1);

	    
		if (size == ret) {
	    	printf("[OK] write(`%s'): %d - %ld\n", str, ret, size);
	    } else {
	    	printf("[Fail] write(`%s'): %d - %ld\n", str, ret, size);
	    }
    }
}