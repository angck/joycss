#! /bin/sh
#���嵱ǰ·��
MYPATH=`pwd`
#����smartsprites·��
SMARTPATH=/d/tools/smartsprites/
#�������ļ�
FILENAME=index
cd $SMARTPATH
./smartsprites.sh $MYPATH/$FILENAME.css
read -p "�˴���ͣ����ֹsmartsprites�д��󣬿��Կ�����ʾ."
mv $MYPATH/$FILENAME.css $MYPATH/$FILENAME.source.css
#�޸��ļ�·����ַ
mv $MYPATH/$FILENAME-sprite.css $MYPATH/$FILENAME.css
# ���ļ�·����/www/dogs/��ʽ
sed -i 's/\.\.\/img/\/www\/dogs\/assets\/img/g' $MYPATH/$FILENAME.css
