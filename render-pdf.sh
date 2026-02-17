#!/bin/bash

files=(
    "index.html"
    "acknowledgements.html"
    "chapter-1.html"
    "chapter-2.html"
    "chapter-3.html"
    "chapter-4.html"
    "chapter-5.html"
    "chapter-6.html"
    "chapter-7.html"
    "chapter-8.html"
    "chapter-9.html"
    "chapter-10.html"
    "chapter-11.html"
    "chapter-12.html"
    "chapter-13.html"
    "chapter-14.html"
    "chapter-15.html"
    "chapter-16.html"
    "chapter-17.html"
    "chapter-18.html"
    "chapter-19.html"
    "chapter-20.html"
    "chapter-21.html"
    "chapter-22.html"
    "chapter-23.html"
    "chapter-24.html"
    "chapter-25.html"
    "chapter-26.html"
    "chapter-27.html"
    "chapter-28.html"
    "chapter-29.html"
    "chapter-30.html"
    "select-figures.html"
    "further-reading-and-resources.html"
    "feedback.html"
    "todo.html"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        weasyprint "$file" "${file%.html}.pdf"
    fi
done

pdfunite $(for file in "${files[@]}"; do echo "${file%.html}.pdf"; done | tr '\n' ' ') dist/how-they-think-book-phone-edition.pdf

for file in "${files[@]}"; do
    rm -f "${file%.html}.pdf"
done
