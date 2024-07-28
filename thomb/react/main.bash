export REACT_TEMPLATE_LOCATION="$CUSTOM_SCRIPT_LOCATION/react/templates"
#create a new react component
newc () {
    mkdir $1
    cd $1
    cp $REACT_TEMPLATE_LOCATION/ComponentTemplate.tsx $1.tsx
    cp $REACT_TEMPLATE_LOCATION/ComponentTemplate.styles.ts $1.styles.ts
    sed -i '' "s/__TEMPLATE__/${1}/g" $1.tsx
    sed -i '' "s/__TEMPLATE__/${1}/g" $1.styles.ts
    echo "export * from './$1'" > index.tsx
    echo "export * from './$1'" >> ../index.tsx
	  vi $1.tsx
}

## Just an example script
example_rename_files () {
  for file in *.html; do
    mv "$file" "$(basename "$file" .html).txt"
  done
}
