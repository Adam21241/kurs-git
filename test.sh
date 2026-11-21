#!/bin/bash
# Test strony: każda strona HTML musi mieć nagłówek h1
blad=0
for plik in *.html; do
  if grep -q "<h1>" "$plik"; then
    echo "OK    $plik"
  else
    echo "BŁĄD  $plik – brak nagłówka h1"
    blad=1
  fi
done
exit $blad