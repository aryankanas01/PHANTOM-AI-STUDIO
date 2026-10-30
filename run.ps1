Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "   Starting Phantom AI Visual Studio...                 " -ForegroundColor Magenta
Write-Host "========================================================" -ForegroundColor Cyan

if (Get-Command py -ErrorAction SilentlyContinue) {
    py -3.14 -m streamlit run app.py
} elseif (Get-Command streamlit -ErrorAction SilentlyContinue) {
    streamlit run app.py
} else {
    python -m streamlit run app.py
}
