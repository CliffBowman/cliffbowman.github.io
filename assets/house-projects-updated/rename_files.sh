#!/bin/bash

script="let images = ["

for picture in  *.jpg ; do
    # small=$(echo "$picture" | sed 's/\(PXL_[0-9]*_[0-9]*\).jpg/\1_1024.jpg/g')
    # echo "$picture"
    # echo "$picture" | sed 's/\(PXL_[0-9]*_[0-9]*\)/\1_1024/g'
    # echo "$small"
    # mv $picture $small

    script="$script'$picture',"
done

echo "$script"

