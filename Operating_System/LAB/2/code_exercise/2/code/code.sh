read -p "Nhập vào họ và tên người dùng: " username
if [ ! -d "$username" ]
then
    mkdir $username
else
    echo "Thư mục $username đã tồn tại"
fi

while read line
do
  mamon=$(echo $line)
  if [ ! -d "$mamon" ]
  then
    mkdir "$mamon"
    echo "Đã tạo thư mục: $mamon"
    else
        echo "Thư mục $mamon đã tồn tại từ trước"
    fi
done < ./monhoc.txt