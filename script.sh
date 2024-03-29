while read p; do
  l=$(echo $p | tr "[:upper:]" "[:lower:]" | tr -d " " | tr -d "\n")
  mkdir "founders/$l/"
  cp generic.html "founders/$l/index.html" 
  sed -i '' "s/\$FOUNDER_NAME/$p/g" "founders/$l/index.html";
  sed -i '' "s/\$FOUNDER_ESCAPED/$l/g" "founders/$l/index.html";
done <people.txt
