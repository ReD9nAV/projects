# Navigate to the project directory
$projectPath = "C:\Users\navad\Documents\codes\mygame\Dino-Game"
Set-Location -Path $projectPath

# Attempt 1: Run the simpler version of the game
$attempt1Path = "$projectPath\Attempt 1 (Random Changes)"
if (Test-Path "$attempt1Path\Dino Game.py") {
    Write-Output "Running Dino Game (Attempt 1)..."
    Set-Location -Path $attempt1Path
    python "Dino Game.py"
    exit
}

# Attempt 2: Run the AI version
$attempt2Path = "$projectPath\Attempt 2 (Directed Changes)"
if (Test-Path "$attempt2Path\test.py") {
    Write-Output "Running Dino Game with AI (Attempt 2)..."
    Set-Location -Path $attempt2Path
    python test.py
    exit
}

Write-Output "Error: Could not find a game file to run."
