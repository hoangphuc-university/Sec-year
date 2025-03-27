for dir in PNG JPG JPEG
do
  if [ ! -d "$dir" ]; then
    mkdir "$dir"
    echo "Đã tạo thư mục $dir"
  fi
done

mv *.jpg /../JPG/

mv *.png /../PNG/

mv *.jpeg /../JPEG/

jpg_count=$(ls /../JPEG/*.jpg | wc -l)

png_count=$(ls /../PNG/*.png | wc -l)

jpeg_count=$(ls /../JPEG/*.jpeg | wc -l)

echo "Số lượng file JPG: $jpg_count"
echo "Số lượng file PNG: $png_count"
echo "Số lượng file JPEG: $jpeg_count"
