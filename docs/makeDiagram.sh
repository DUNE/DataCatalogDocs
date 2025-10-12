export TEMP=$PWD
cd $HERE/python
pydeps DDInterface.py -T jpg --include-missing --cluster --rankdir BT
pydeps samtest.py -T jpg --include-missing --cluster --rankdir BT
mv samtest.jpg $HERE/docs
mv DDInterface.jpg $HERE/docs
chmod +x $HERE/docs/DDInterface.jpg
cd $TEMP
