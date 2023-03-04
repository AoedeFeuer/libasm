#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
ssize_t ft_read(int fd, void *buf, size_t count);

int main()
{
	int fd = open("/etc/passwd", O_RDONLY);
	int size = 10;
	char *str = malloc((size + 1) * sizeof(char));
	int ret = ft_read(fd, str, 10);
	if (size == ret) {
		printf("[OK] read(): `%s' - %d - %d\n", str, ret, size);
	} else {
		printf("[Fail] read(): `%s' - %d - %d\n", str, ret, size);
	}
	close(fd);
}