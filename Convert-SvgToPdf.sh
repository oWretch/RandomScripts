find . -type f -name "*.svg" -exec sh -c '
  for svg do 
    rsvg-convert -w 64 -h 64 -a -f pdf -o "${svg%.svg}.pdf" "$svg"
  done
' sh {} +
