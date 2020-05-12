find . -type f -name "*.mkv" -exec sh -c '
  for mkv do 
    if [ ! -f "${mkv%.mkv}.m4v"]
    transcode-video --m4v --crop detect --fallback-crop minimal --encoder vt_h264 "$mkv"
  done
' sh {} +
