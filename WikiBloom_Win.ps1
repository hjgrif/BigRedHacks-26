# WikiBloom for Windows — a gentle flood of knowledge
Write-Host "🌱 WikiBloom activating... Opening 50 windows of wonder..." -ForegroundColor Cyan

for ($i = 1; $i -le 50; $i++) {
    # Pick a random language for flavor (en, de, fr, es, it, ja, ru, pt, zh, etc.)
    $langs = @("en", "de", "fr", "es", "it", "ja", "ru", "pt", "zh", "simple")
    $lang = $langs[(Get-Random -Maximum $langs.Count)]

    # Open Special:Random in new tab (every window is a fresh tab)
    Start-Process "https://$lang.wikipedia.org/wiki/Special:Random"

    # Slight pause to avoid overwhelming the browser—gentle, like breath between notes
    Start-Sleep -Milliseconds 250

    Write-Host "$i/50 opened: https://$lang.wikipedia.org/wiki/Special:Random" -ForegroundColor Magenta
}

Write-Host "`n✨ WikiBloom complete! Enjoy your bloom of knowledge." -ForegroundColor Green
