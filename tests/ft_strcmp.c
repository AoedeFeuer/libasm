#include <stdio.h>
#include <string.h>
int ft_strcmp(char *str, char *str2);

//int		ft_strcmp(const char *s1, const char *s2)
//{
//	size_t i;
//
//	i = 0;
//	while ((s1[i] == s2[i]) && (s1[i] != '\0') && (s2[i] != '\0'))
//		i++;
//	return ((unsigned char)s1[i] - (unsigned char)s2[i]);
//}

int main(void)
{
    char *str = "hello";
    char *str2 = "helloo";
    int i = strcmp(str, str2);
    int f = ft_strcmp(str, str2);
    printf("i = %d %d\n", i, f);
    return(0);
}