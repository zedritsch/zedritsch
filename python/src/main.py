from sys import exit, argv

def main(argc: int, argv: list[str]) -> int:
	index: int = 0

	while index < argc:
		print(argv[index])

	return 0

if __name__ == "__main__":
	exit(main(len(argv), argv))