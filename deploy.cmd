rmdir /s /q public

hugo --buildDrafts --buildFuture --debug --minify

git add --all .
git commit -S -m "Committed."
git push

rem remove all files
call aws s3 rm s3://doctorflow.net --recursive

rem start s3 sync
call aws s3 sync public s3://doctorflow.net
