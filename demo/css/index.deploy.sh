#! /bin/sh
#���嵱ǰ·��
MYPATH=`pwd`
#����smartsprites·��
SMARTPATH=/d/tools/smartsprites/
cd $SMARTPATH
smartsprites.sh $MYPATH/index.css
read -p "�˴���ͣ����ֹsmartsprites�д��󣬿��Կ�����ʾ."
mv $MYPATH/index.css $MYPATH/index.source.css
#�޸��ļ�·����ַ
mv $MYPATH/index-sprite.css $MYPATH/index.css
# ���ļ�·����/www/dogs/��ʽ
sed -i 's/\.\.\/img/\/www\/dogs\/assets\/img/g' $MYPATH/index.css
