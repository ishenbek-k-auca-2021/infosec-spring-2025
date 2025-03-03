# delete_empty_files.ps1 - Finds and deletes empty files in a given directory

param (
    [string]$directory
)

# Check if the directory exists
if (!(Test-Path $directory)) {
    Write-Host "Error: Directory not found!"
    exit 1
}

# Get all files in the directory, filter to find empty files
$emptyFiles = Get-ChildItem $directory -File | Where-Object { $_.Length -eq 0 }

# If no empty files found, notify the user
if ($emptyFiles.Count -eq 0) {
    Write-Host "No empty files found."
    exit 0
}

# Delete the empty files
$emptyFiles | ForEach-Object {
    Write-Host "Deleting: $($_.FullName)"
    Remove-Item $_.FullName -Force
}

Write-Host "All empty files deleted."
