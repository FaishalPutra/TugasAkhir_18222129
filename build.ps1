$ErrorActionPreference = "Stop"
$doc = "TA"
$dir = $PSScriptRoot

Set-Location $dir

function Step($n, $cmd, $args) {
    Write-Host "`n=== [$n/4] $cmd ===" -ForegroundColor Cyan
    & $cmd @args
    if ($LASTEXITCODE -ne 0) {
        Write-Host "GAGAL pada langkah $n ($cmd)" -ForegroundColor Red
        exit 1
    }
}

$xeArgs = @("-synctex=1", "-interaction=nonstopmode", "-file-line-error", "$doc.tex")

Step 1 xelatex $xeArgs
Step 2 biber   @($doc)
Step 3 xelatex $xeArgs
Step 4 xelatex $xeArgs

Write-Host "`n=== Kompilasi selesai: $doc.pdf ===" -ForegroundColor Green
