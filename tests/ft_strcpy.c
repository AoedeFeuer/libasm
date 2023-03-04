#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char *ft_strcpy(char *dst, const char *src);

//int		ft_strcpy(const char *s1, const char *s2)


int main(void)
{
    char *str = "helllo";
    char *str2 = (char*)malloc(100);
    char *i = strcpy(str2, str);
    char *f = ft_strcpy(str2, str);
    printf("%s\n%s\n", i, f);
    return(0);
}