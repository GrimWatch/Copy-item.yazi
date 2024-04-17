param(
  [string]$path
)

Import-Module -Name SetClipboard
Set-Clipboard -Path $path

