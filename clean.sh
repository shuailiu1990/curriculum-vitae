#!/bin/bash

for target in ./*; do
    echo $target
    if [[ -d $target ]]; then
        if [[ $target == "./cv-english" ]] || [[ $target == "./cv-chinese" ]] || [[ $target == "./cv-template" ]] || [[ $target == "./publication-list" ]] || [[ $target == "./recommendation-letter" ]]; then
            echo $target
            cd $target
            make clean
            cd ..
        else
            cd $target
            for subtarget in ./*; do
                cd $subtarget
                make clean
                cd ..
            done
            cd ..
        fi
    fi
done
