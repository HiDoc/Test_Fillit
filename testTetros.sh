for file in ./TetroNotValid/*; 
do
	echo $file;
   	/tmp/lchancri/fillit $file;	
done;
../../Fillit/fillit hello
for file in ./TetroValid/*; 
do
	echo $file;
   	/tmp/lchancri/fillit $file;	
done;

