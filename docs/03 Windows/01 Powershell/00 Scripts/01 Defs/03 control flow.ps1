# control flow
$number = Read-Host "Enter a number [1-9]"
$number = [int]$number
if(($number -gt 0) -and ($number -lt 10))
{
	$numberArray = 1..$number
	Write-Host $numberArray 
}
