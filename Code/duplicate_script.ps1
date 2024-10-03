param (
    [string]$filePath
)

# Enable script debugging
$ErrorActionPreference = "Stop"
$VerbosePreference = "Continue"

# Define log file path (logs will be saved to your desktop)
$logFilePath = "$env:USERPROFILE\Desktop\duplicate_log.txt"

# Function to log messages
function Log-Message {
    param (
        [string]$message
    )
    Add-Content -Path $logFilePath -Value $message
}

# Log the input file path
#Log-Message "Duplicating: $filePath"

# Get the item details
$item = Get-Item -LiteralPath $filePath

# For files, $directory is the folder that contains the file. For folders, $directory is the parent folder.
if ($item.PSIsContainer) {
    # It's a folder, so get the parent directory of the folder
    $directory = [System.IO.Path]::GetDirectoryName($filePath)
    $baseName = $item.Name
  #  Log-Message "Detected a folder"
} else {
    # It's a file
    $directory = $item.DirectoryName
    $baseName = $item.BaseName
    $extension = $item.Extension
  #  Log-Message "Detected a file with extension: $extension"
}

$counter = 1

# Generate a new name for the duplicate
do {
    if ($item.PSIsContainer) {
        # For folders (no extension)
        $newName = "$directory\$baseName - Copy$counter"
    } else {
        # For files (with extension)
        $newName = "$directory\$baseName - Copy$counter$extension"
    }
    $counter++
} while (Test-Path -LiteralPath $newName)

# Log the new name
#Log-Message "New name: $newName"

# Copy the item (recursively for folders)
if ($item.PSIsContainer) {
    # Use -Recurse for directories
    Copy-Item -LiteralPath $filePath -Destination $newName -Recurse
#    Log-Message "Folder duplicated as: $newName"
} else {
    # Normal copy for files
    Copy-Item -LiteralPath $filePath -Destination $newName
 #   Log-Message "File duplicated as: $newName"
}

# Log the completion message
#Log-Message "Duplication completed for: $filePath"
