@echo off
echo Start %1 
rm %2%.txt
printf 1000,1, >> %2%.txt
cat res1000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,2, >> %2%.txt
cat res1000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,4, >> %2%.txt
cat res1000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,6, >> %2%.txt
cat res1000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,8, >> %2%.txt
cat res1000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,10, >> %2%.txt
cat res1000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,12, >> %2%.txt
cat res1000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,14, >> %2%.txt
cat res1000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,16, >> %2%.txt
cat res1000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,18, >> %2%.txt
cat res1000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,20, >> %2%.txt
cat res1000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,22, >> %2%.txt
cat res1000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,24, >> %2%.txt
cat res1000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,26, >> %2%.txt
cat res1000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,28, >> %2%.txt
cat res1000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,30, >> %2%.txt
cat res1000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 1000,32, >> %2%.txt
cat res1000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,1, >> %2%.txt
cat res5000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,2, >> %2%.txt
cat res5000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,4, >> %2%.txt
cat res5000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,6, >> %2%.txt
cat res5000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,8, >> %2%.txt
cat res5000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,10, >> %2%.txt
cat res5000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,12, >> %2%.txt
cat res5000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,14, >> %2%.txt
cat res5000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,16, >> %2%.txt
cat res5000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,18, >> %2%.txt
cat res5000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,20, >> %2%.txt
cat res5000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,22, >> %2%.txt
cat res5000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,24, >> %2%.txt
cat res5000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,26, >> %2%.txt
cat res5000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,28, >> %2%.txt
cat res5000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,30, >> %2%.txt
cat res5000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 5000,32, >> %2%.txt
cat res5000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,1, >> %2%.txt
cat res10000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,2, >> %2%.txt
cat res10000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,4, >> %2%.txt
cat res10000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,6, >> %2%.txt
cat res10000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,8, >> %2%.txt
cat res10000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,10, >> %2%.txt
cat res10000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,12, >> %2%.txt
cat res10000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,14, >> %2%.txt
cat res10000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,16, >> %2%.txt
cat res10000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,18, >> %2%.txt
cat res10000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,20, >> %2%.txt
cat res10000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,22, >> %2%.txt
cat res10000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,24, >> %2%.txt
cat res10000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,26, >> %2%.txt
cat res10000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,28, >> %2%.txt
cat res10000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,30, >> %2%.txt
cat res10000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 10000,32, >> %2%.txt
cat res10000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,1, >> %2%.txt
cat res15000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,2, >> %2%.txt
cat res15000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,4, >> %2%.txt
cat res15000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,6, >> %2%.txt
cat res15000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,8, >> %2%.txt
cat res15000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,10, >> %2%.txt
cat res15000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,12, >> %2%.txt
cat res15000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,14, >> %2%.txt
cat res15000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,16, >> %2%.txt
cat res15000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,18, >> %2%.txt
cat res15000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,20, >> %2%.txt
cat res15000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,22, >> %2%.txt
cat res15000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,24, >> %2%.txt
cat res15000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,26, >> %2%.txt
cat res15000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,28, >> %2%.txt
cat res15000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,30, >> %2%.txt
cat res15000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 15000,32, >> %2%.txt
cat res15000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,1, >> %2%.txt
cat res20000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,2, >> %2%.txt
cat res20000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,4, >> %2%.txt
cat res20000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,6, >> %2%.txt
cat res20000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,8, >> %2%.txt
cat res20000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,10, >> %2%.txt
cat res20000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,12, >> %2%.txt
cat res20000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,14, >> %2%.txt
cat res20000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,16, >> %2%.txt
cat res20000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,18, >> %2%.txt
cat res20000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,20, >> %2%.txt
cat res20000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,22, >> %2%.txt
cat res20000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,24, >> %2%.txt
cat res20000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,26, >> %2%.txt
cat res20000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,28, >> %2%.txt
cat res20000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,30, >> %2%.txt
cat res20000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 20000,32, >> %2%.txt
cat res20000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,1, >> %2%.txt
cat res25000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,2, >> %2%.txt
cat res25000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,4, >> %2%.txt
cat res25000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,6, >> %2%.txt
cat res25000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,8, >> %2%.txt
cat res25000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,10, >> %2%.txt
cat res25000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,12, >> %2%.txt
cat res25000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,14, >> %2%.txt
cat res25000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,16, >> %2%.txt
cat res25000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,18, >> %2%.txt
cat res25000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,20, >> %2%.txt
cat res25000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,22, >> %2%.txt
cat res25000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,24, >> %2%.txt
cat res25000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,26, >> %2%.txt
cat res25000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,28, >> %2%.txt
cat res25000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,30, >> %2%.txt
cat res25000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 25000,32, >> %2%.txt
cat res25000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,1, >> %2%.txt
cat res30000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,2, >> %2%.txt
cat res30000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,4, >> %2%.txt
cat res30000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,6, >> %2%.txt
cat res30000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,8, >> %2%.txt
cat res30000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,10, >> %2%.txt
cat res30000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,12, >> %2%.txt
cat res30000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,14, >> %2%.txt
cat res30000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,16, >> %2%.txt
cat res30000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,18, >> %2%.txt
cat res30000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,20, >> %2%.txt
cat res30000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,22, >> %2%.txt
cat res30000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,24, >> %2%.txt
cat res30000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,26, >> %2%.txt
cat res30000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,28, >> %2%.txt
cat res30000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,30, >> %2%.txt
cat res30000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 30000,32, >> %2%.txt
cat res30000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,1, >> %2%.txt
cat res35000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,2, >> %2%.txt
cat res35000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,4, >> %2%.txt
cat res35000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,6, >> %2%.txt
cat res35000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,8, >> %2%.txt
cat res35000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,10, >> %2%.txt
cat res35000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,12, >> %2%.txt
cat res35000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,14, >> %2%.txt
cat res35000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,16, >> %2%.txt
cat res35000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,18, >> %2%.txt
cat res35000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,20, >> %2%.txt
cat res35000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,22, >> %2%.txt
cat res35000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,24, >> %2%.txt
cat res35000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,26, >> %2%.txt
cat res35000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,28, >> %2%.txt
cat res35000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,30, >> %2%.txt
cat res35000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 35000,32, >> %2%.txt
cat res35000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,1, >> %2%.txt
cat res40000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,2, >> %2%.txt
cat res40000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,4, >> %2%.txt
cat res40000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,6, >> %2%.txt
cat res40000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,8, >> %2%.txt
cat res40000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,10, >> %2%.txt
cat res40000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,12, >> %2%.txt
cat res40000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,14, >> %2%.txt
cat res40000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,16, >> %2%.txt
cat res40000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,18, >> %2%.txt
cat res40000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,20, >> %2%.txt
cat res40000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,22, >> %2%.txt
cat res40000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,24, >> %2%.txt
cat res40000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,26, >> %2%.txt
cat res40000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,28, >> %2%.txt
cat res40000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,30, >> %2%.txt
cat res40000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 40000,32, >> %2%.txt
cat res40000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,1, >> %2%.txt
cat res45000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,2, >> %2%.txt
cat res45000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,4, >> %2%.txt
cat res45000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,6, >> %2%.txt
cat res45000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,8, >> %2%.txt
cat res45000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,10, >> %2%.txt
cat res45000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,12, >> %2%.txt
cat res45000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,14, >> %2%.txt
cat res45000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,16, >> %2%.txt
cat res45000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,18, >> %2%.txt
cat res45000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,20, >> %2%.txt
cat res45000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,22, >> %2%.txt
cat res45000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,24, >> %2%.txt
cat res45000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,26, >> %2%.txt
cat res45000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,28, >> %2%.txt
cat res45000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,30, >> %2%.txt
cat res45000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 45000,32, >> %2%.txt
cat res45000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,1, >> %2%.txt
cat res50000_1.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,2, >> %2%.txt
cat res50000_2.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,4, >> %2%.txt
cat res50000_4.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,6, >> %2%.txt
cat res50000_6.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,8, >> %2%.txt
cat res50000_8.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,10, >> %2%.txt
cat res50000_10.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,12, >> %2%.txt
cat res50000_12.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,14, >> %2%.txt
cat res50000_14.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,16, >> %2%.txt
cat res50000_16.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,18, >> %2%.txt
cat res50000_18.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,20, >> %2%.txt
cat res50000_20.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,22, >> %2%.txt
cat res50000_22.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,24, >> %2%.txt
cat res50000_24.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,26, >> %2%.txt
cat res50000_26.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,28, >> %2%.txt
cat res50000_28.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,30, >> %2%.txt
cat res50000_30.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
printf 50000,32, >> %2%.txt
cat res50000_32.txt | sed -n 's/Thread-[0-9]*-[%1] execution time was (millis)://p' | tr "\n" "," >> %2%.txt
printf \n >> %2%.txt
echo END %1