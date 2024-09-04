param (
    [string]$filePath
)

# Get the file details
$file = Get-Item -LiteralPath $filePath
$directory = $file.DirectoryName
$baseName = $file.BaseName
$extension = $file.Extension
$counter = 1

# Generate a new file name
do {
    $newFileName = "$directory\$baseName - Copy$counter$extension"
    $counter++
} while (Test-Path -LiteralPath $newFileName)

# Copy the file
Copy-Item -LiteralPath $filePath -Destination $newFileName

