mainDirectory=$(date +"%Y%m%d_%H%M%S")

mkdir "$mainDirectory"

languageArray=("Python" "Java" "C++" "JavaScript" "Go" "SML" "HTML" "C" "C#" "PHP")

for i in {101..110}; do
 subDirectory="file$i"
 mkdir "$mainDirectory/$subDirectory"
 for((j = 501; j <= 510; j++)); do
  currentIndex=$((j - 501))
  echo "${languageArray[$currentIndex]}" > "$mainDirectory/$subDirectory/tuser$j.txt"
 done
done
  