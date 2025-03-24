echo "Xin moi nhap vao so n"
read n

while [ $n -lt 10 ]
do
    echo "Nhap lai so n cho lon hon hoac bang 10"
    read n
done
sum=0
for i in $(seq 1 $n)
do
    sum=$((sum+i))
done
echo $sum