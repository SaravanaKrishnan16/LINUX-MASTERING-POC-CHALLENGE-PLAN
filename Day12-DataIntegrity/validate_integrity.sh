#!/bin/bash

FILE="original.txt"
TAMPERED="tampered.txt"

echo "🔐 Generating fresh checksums for $FILE..."
md5sum "$FILE" > original.md5
sha256sum "$FILE" > original.sha256

echo
echo "✅ Now checking integrity of $FILE (original):"
md5sum -c original.md5

echo
echo "✅ Now comparing $FILE with $TAMPERED using diff:"
diff "$FILE" "$TAMPERED" > /dev/null

if [ $? -eq 0 ]; then
    echo "✅ Files are identical. No tampering detected."
else
    echo "❌ Files differ! Possible tampering or corruption detected."
fi
