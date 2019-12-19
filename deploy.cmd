rmdir /s /q public

hugo --buildDrafts --buildFuture --debug --minify

git add --all .
git commit -S -m "Committed."
git push

rem start s3 sync
call aws s3 sync public s3://doctorflownet --delete
