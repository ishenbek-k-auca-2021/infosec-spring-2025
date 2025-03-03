# current_time.ps1 - Shows time left in workday (assuming it ends at 18:00)

# Set the end time of the workday (6 PM)
$endTime = Get-Date -Hour 18 -Minute 0 -Second 0
$currentTime = Get-Date

# Calculate remaining time
$remaining = $endTime - $currentTime

# Display current time and time remaining until workday ends
Write-Host "Current time: $currentTime"
Write-Host "Work day ends in: $($remaining.Hours) hours and $($remaining.Minutes) minutes."
