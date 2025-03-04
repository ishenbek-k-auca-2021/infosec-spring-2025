param (
    [string]$fileName,
    [string]$word
)

# Check if the file exists
if (!(Test-Path $fileName)) {
    Write-Host "Error: File not found!"
    exit 1
}

# Count occurrences of the word in the file
$count = (Get-Content $fileName | Select-String -Pattern "\b$word\b" -AllMatches).Matches.Count

# Output the result
Write-Host "The word '$word' appears $count times in '$fileName'."
