#!/bin/bash
# WikiBloom for Fedora 43 — a symphony of random wisdom

echo "🌱 WikiBloom activating on Fedora 43... 🌍"
echo "Opening 50 browsers of serendipity..."

langs=("en" "de" "fr" "es" "it" "ja" "ru" "pt" "zh" "simple")

for ((i=1; i<=50; i++)); do
    # Pick random language
    lang=${langs[$((RANDOM % ${#langs[@]}))]}

    # Open random page in default browser (Firefox is Fedora's heart)
    xdg-open "https://${lang}.wikipedia.org/wiki/Special:Random"

    # Tiny delay—browsers need a breath too
    sleep 0.25

    echo "$i/50 opened: https://${lang}.wikipedia.org/wiki/Special:Random"
done

echo -e "\n✨ WikiBloom complete! Your Fedora is now blooming with wonder."
