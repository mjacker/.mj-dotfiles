# du sort by size
`du -ah <directory_path> | grep -v "/$" | sort -hr`

du:
	-a: all
	-h: humand redeable

grep:
	-v: ??

sort:
	-h: human redeable
	-r: reverse
