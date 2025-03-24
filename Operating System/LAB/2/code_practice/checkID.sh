echo "Nhap vao ten va ma so sinh vien: "
read name
read id
real_name="Le Nguyen Hoang Phuc"
real_id="23521198"
if [ "$name" = "$real_name" ]
then
    echo "Oke name"
else
    while [ "$name" != "$real_name" ]
    do
        echo "Ten chua dung, xin moi ban nhap lai."
        read name
    done
fi

if [ "$id" = "$real_id" ]
then
    echo "Oke id"
else
    while [ "$id" != "$real_id" ]
    do
        echo "Ma so sinh vien chua dung xin moi nhap lai"
        read id
    done
fi

echo $name
echo $id