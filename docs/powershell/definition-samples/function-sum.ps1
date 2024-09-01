function mysum {
	param(
		[int]$num1,
		[int]$num2
	)
	Write-Host "hola"
	Write-Output "chau"
	$sum = $num1 + $num2
	Write-Output "The sum of $num1 and $num2 is: $sum"
	return $sum
}
