if [ ! -d "PNG" ]; then
  mkdir PNG
  echo "Đã tạo thư mục PNG"
else
  echo "Thư mục PNG đã tồn tại"
fi

if [ ! -d "JPG" ]; then
  mkdir JPG
  echo "Đã tạo thư mục JPG"
else
  echo "Thư mục JPG đã tồn tại"
fi
