read -p "Nhập chuỗi cần kiểm tra: " input

if grep "$input" ./test.txt; then
  echo "Chuỗi '$input' tồn tại"
else
  echo "Chuỗi '$input' KHÔNG tồn tại"
fi
