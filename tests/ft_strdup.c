//  char	*ft_strdup(const char *s1)
//  {
//  	char *s2;
//  
//  	if (!(s2 = (char *)malloc(ft_strlen(s1) + 1)))
//  		return (0);
//  	ft_strcpy(s2, s1);
//  	return (s2);
//  }

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *ft_strdup(char *src);


int main(void)
{
    char *str = "hey you hello there";
    char *i = strdup(str);
    char *f = ft_strdup(str);
    printf("%s\n%s\n", i, f);
    return(0);
}