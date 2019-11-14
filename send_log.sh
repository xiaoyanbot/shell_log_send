tail -fn0 ./log.txt | while read line;

do

        #echo "have line : "
        echo "$line"

        in=$( base64 <<< "$line")

        echo "$in"

        curl http://127.0.0.1:9501/ -d "info=$in"

        echo "-------------"

done
