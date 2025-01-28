#This is just a variable to specify the date formatting.
mainDirectory=$(date +"%Y%m%d_%H%M%S")

#This is the linux command mkdir to "Make Directory" Which is named the date of runtime.
mkdir "$mainDirectory"

#This is an array with the amount of programming languages to fit each subfolder.
languageArray=("Python" "Java" "C++" "JavaScript" "Go" "SML" "HTML" "C" "C#" "PHP")

#A for loop from 101 to 110, variable subDirectory is assigned file(i), a new directory is
# made under my mainDirectory, inside this directory we loop with j from 501-510, assign currentIndex
# to be 0 to begin which is 501-501 to 9 which is 510-501, now we write the languageArray[indexPosition]
# into the file that is made under the main and sub directories called tuser(j).txt, the inner loop ends,
# then the outer loop ends.
for i in {101..110}; do
 subDirectory="file$i"
 mkdir "$mainDirectory/$subDirectory"
 for((j = 501; j <= 510; j++)); do
  currentIndex=$((j - 501))
  echo "${languageArray[$currentIndex]}" > "$mainDirectory/$subDirectory/tuser$j.txt"
 done
done
  
