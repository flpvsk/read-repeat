set -e

if [ $# -lt 2 ]
  then
    echo "Name of tag and path to release required, e.g."
    echo "  ./make-release-zip.sh 2030-rev1 ~/Downloads"
    echo ""
    exit 1
fi


git tag $1

NAME=rdrpt-$1
DIR=.tmp/$NAME

rm -rf $DIR

mkdir -p $DIR/main
mkdir -p $DIR/jacks

cp -r feedback-main-board/jlc/* $DIR/main/
cp -r feedback-jack-board/jlc/* $DIR/jacks/

cd .tmp
zip -r $2/$NAME.zip $NAME
cd -

echo "Done. Run `git push --all --tags` then create a release in the git forge."
