@echo off

echo Removing old files 
rm output.txt
rm output.csv
cat *.txt | sed -n 's/Total execution time for current run (millis)://p;s/Threads used in current run: //p;s/Elements used in current run: //p' >> output.txt
echo Finished with exporting the data

echo Prepare output.csv 
java -jar "ExtractData.jar" output.txt

