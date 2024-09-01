$baseUri = 'https://github.com/ryanoasis/nerd-fonts/releases/download'
$files = @(
	@{
		Uri = "$baseUri/v3.2.1/CascadiaMono.zip"
		OutFile = "CasadiaMono.zip"
	}
)

$jobs = @()


foreach ($file in $files){
	$jobs += Start-ThreadJob -Name $file.OutFile -ScriptBlock {
		$params = $using:file
		Invoke-WebRequest @params
	}
}

Write-Host "Download started.."
Wait-Job -Job $jobs


foreach ($job in $jobs) {
    Receive-Job -Job $job
}
