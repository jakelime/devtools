param([string]$pythonEnvName="venv")
$activateScriptName = "Activate.ps1"
$isValid = $true
Write-Host "activating python=$pythonEnvName..."
# $scriptPath = Join-Path -Path $env:USERPROFILE "venv" "Scripts" $activateScriptName # Works only on powershell7
$scriptPath = Join-Path $env:USERPROFILE -ChildPath $pythonEnvName | Join-Path -ChildPath "Scripts" | Join-Path -ChildPath $activateScriptName    

if (Test-Path -Path $scriptPath) 
{
    & $scriptPath
}
else
{
    throw "missing dir (python=$pythonEnvName)..."
}

