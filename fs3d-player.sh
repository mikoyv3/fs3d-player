#!/bin/bash

FILE=$(zenity --file-selection --title="Select FS3D Video")

[ -z "$FILE" ] && exit 0

ffplay \
-sn \
-fflags +genpts+nobuffer \
-sync video \
-framedrop \
-fs \
-i "$FILE" \
-vf "split=2[a][b];[a]select='not(mod(n\,2))'[l];[b]select='mod(n\,2)'[r];[l][r]hstack" \
2>/dev/null
