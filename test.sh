#!/bin/bash
BASEDIR="$(pwd)"
# navega atá a pasta
echo "Digite o caminho para ir: "
read CAMINHO
if [ "$CAMINHO" != "" ] 
then 
	cd $CAMINHO
else
	echo "Pasta não informada" && exit
fi

# cria a pasta indicada
echo "Digite o nome para criar a pasta:"
read PASTA
if [ "$PASTA" != "" ] 
then 
	mkdir $BASEDIR/$CAMINHO/$PASTA
else
	echo "Pasta não informada" && exit
fi

echo "deseja criar os arquivos index e styles? [Sn]"
read CRIAR
if [ "$CRIAR" != "n" ]
then
	#cd "./$PASTA" && touch $FILES
	#echo $(pwd)
	cd $BASEDIR/$CAMINHO/$PASTA && touch index.tsx styles.ts
	FILE01=$BASEDIR/$CAMINHO/$PASTA/index.tsx
	FILE02=$BASEDIR/$CAMINHO/$PASTA/styles.ts
	
	echo "import React from 'react';" >> $FILE01 
	echo "" >> $FILE01 
	echo "import { Container } from './styles';" >> $FILE01
	echo "" >> $FILE01 
	echo "const ${PASTA}: React.FC = () => {" >> $FILE01
	echo "  return <Container />;" >> $FILE01
	echo "};" >> $FILE01
	echo "" >> $FILE01 
	echo "export default ${PASTA};" >> $FILE01
	
	echo "import styled from 'styled-components';" >> $FILE02
	echo "" >> $FILE02
	echo "export const Container = styled.div\`" >> $FILE02
	echo "	|" >> $FILE02
	echo "\`;" >> $FILE02	

	cd $BASEDIR
else
	echo "digite os nomes de arquivos para criar."
	read FILES
	if [ "$FILES" != "" ] 
	then
		cd $BASEDIR/$CAMINHO/$PASTA && touch $FILES
		cd $BASEDIR
	fi
fi 
