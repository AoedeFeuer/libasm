ASM			= nasm
ASM_FLAGS	= -f macho64
FLAGS		= -Wall -Werror -Wextra
NAME 		= libasm.a


INCL		= include/libasm.h
INCL_B		= include/libasm_bonus.h
SRC_DIR		= src

SRC			= $(addprefix  $(SRC_DIR)/, \
			  ft_read.s \
			  ft_strcmp.s \
			  ft_strcpy.s \
			  ft_strdup.s \
			  ft_strlen.s \
			  ft_write.s )

SRC_BONUS	= $(addprefix  $(SRC_DIR)/, \
			  ft_list_size_bonus.s \
			  ft_list_push_front_bonus.s )
			  
OBJS			= $(SRC:.s=.o)

OBJS_B			= $(SRC_BONUS:.s=.o)

%.o:		%.s
			$(ASM) $(ASM_FLAGS) $<

all: 		$(NAME)

$(NAME): 	$(OBJS) $(INCL)
		 	ar rc $(NAME) $(OBJS)

clean:
			rm -rf $(OBJS) $(OBJS_B)

fclean: 	clean
			rm -rf $(NAME)

re: 		fclean all

bonus:		$(OBJ) $(OBJS_B) $(INCL) $(INCL_B)
			ar rc $(NAME) $(OBJS) $(OBJS_B)