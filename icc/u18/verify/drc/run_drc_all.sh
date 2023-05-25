for d in */ ; do
    cd ./$d
    rule=`find -name "G-DF*" -or -name "umc*"`
    calibre -drc -hier $rule
    cd ..
done

more *.sum > DRC.all.sum
