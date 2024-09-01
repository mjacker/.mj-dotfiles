# Arrays
Write-Host "Loading array..."
$array1 = 1, 2, 3, 4, 5

Write-Host "Getting array type:"
$array1.GetType()

Write-Host
Write-Host "Printing array content: ";
foreach ($element in $array1)
{
	Write-Host "$element"
}
