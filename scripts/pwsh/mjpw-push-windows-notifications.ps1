param (
    [string]$message = "Default message"
)

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
$objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon
$objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Information
$objNotifyIcon.BalloonTipIcon = "Info"
$objNotifyIcon.BalloonTipText = $message
$objNotifyIcon.BalloonTipTitle = "Notification"
$objNotifyIcon.Visible = $True
$objNotifyIcon.ShowBalloonTip(10000)

Start-Sleep -Seconds 10
$objNotifyIcon.Dispose()

