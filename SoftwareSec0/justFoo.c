void bar()
{
	printf("Hey there, I'm bar!\n");
}

void foo()
{
	char input[10];
	gets(input);
	printf("You typed: %s\n", input);
}

int main()
{
	foo();
	return 0;
}
