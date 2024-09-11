
#!bash
find /top/dir/for/mp3s -name '*mp3'
You will want to use that output to loop over it, so:

find /top/dir/for/mp3s -name '*mp3' | while read mp3file, do
    # do the linking
done
#!/bash

You want create a link in a specific directory, probably with the same filename. You can get the filename with basename. So, that would make it something like this:
#!bash
find /top/dir/for/mp3s -name '*mp3' | while read mp3file; do
    filename=$(basename $mp3file)
    ln -s $mp3file /dir/where/the/links/are/$filename
    echo Linked $mp3file to /dir/where/the/links/are/$filename
done
#!/bash
However, this will probably give you two types of error:

If the mp3 filename contains spaces, basename will not produce the correct filename and ln will complain. Solution: use correct quoting.
If you have duplicate filenames, ln will complain that the link already exists. Solution: test if the link exists.
Because you're not destroying anything', you can try it and actually see the problems. So, our next iteration would be:
#!bash
find /top/dir/for/mp3s -name '*mp3' | while read mp3file; do
    filename=$(basename "$mp3file")
    if [ ! -l "/dir/where/the/links/are/$filename" ] ; then
        ln -s "$mp3file" "/dir/where/the/links/are/$filename"
        echo "Linked $mp3file to /dir/where/the/links/are/$filename"
    else
        echo "Not linked $mp3file; link exists"
    fi
done

#!/bash
That should give you a fairly good result. It also gives you a good starting point.