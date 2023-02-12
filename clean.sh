#!/bin/bash
#for target in ./*
#do
#    if test -f $target
#    then
#        echo $target 是文件
#    fi
#    if test -d $target
#    then
#        echo $target 是目录
#    fi
#done

for target in ./*
do
    echo $target
    if test -d $target
    then
        if [ $target == "./cv" ] || [ $target == "./cv-chinese" ] || [ $target == "./cv-template" ] || [ $target == "./publications-list" ] || [ $target == "./recommendation-letter" ]
        then
            cd $target
            make clean
            cd ..
        else
            cd $target
            for subtarget in ./*
            do
                cd $subtarget
                make clean
                cd ..
            done
            cd ..
        fi
    fi
done
