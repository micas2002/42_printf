/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_utils_2.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mibernar <mibernar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/26 15:19:38 by mibernar          #+#    #+#             */
/*   Updated: 2022/01/26 15:27:56 by mibernar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static char	ft_strcpy(char *dst, const char *src)
{
	int	x;

	x = 0;
	while (src[x] != '\0')
	{
		dst[x] = src[x];
		x++;
	}
	dst[x] = '\0';
	return (*dst);
}

char	*ft_strdup(const char *s1)
{
	char	*dest;

	dest = (char *)malloc(sizeof(char) * (ft_strlen(s1) + 1));
	if (!dest)
		return (NULL);
	ft_strcpy(dest, s1);
	return (dest);
}

void	ft_putchar_fd(char c, int fd)
{
	write(fd, &c, 1);
}
