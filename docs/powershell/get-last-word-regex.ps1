# $string = "This is an example string"
$string = $env:HOMEPATH

if ($string -match '\b(\w+)\b$') {
    $lastWord = $matches[1]
    Write-Output $lastWord
}
