#include <stdio.h>
#include <string.h>
int ft_strlen(char *str);

/*int ft_strlen(char *str)
{
    int i;
    i = 0;

    while (str[i] != '\0')
        i++;
    return (i);
    
}*/

int main(void)
{
    char *str = "hello";
    char *str2 = "hello";
//    int i = strlen(str);
    int i = ft_strlen(str);
    int f = ft_strlen(str2);
    printf("i = %d %d\n", i, f);
    return(0);
}