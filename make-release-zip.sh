set -e

if [ $# -lt 2 ]
  then
    echo "Name of the release required, e.g."
    echo "  ./make-release-zip.sh 2030-rev1 ~/Downloads"
    echo ""
    exit 1
fi


NAME=rdprt-$1
DIR=.tmp/$NAME

rm -rf $DIR

mkdir -p $DIR/rdrpt-main-board
mkdir -p $DIR/rdrpt-jack-board

cp -r ./feedback-main-board/jlc/* $DIR/rdrpt-main-board
cp -r ./feedback-jack-board/jlc/* $DIR/rdrpt-jack-board

cd .tmp
zip -r $2/$NAME.zip $NAME
cd -
