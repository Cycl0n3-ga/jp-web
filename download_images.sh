#!/bin/bash

mkdir -p images
cd images

# Header
wget http://hscc.cs.nthu.edu.tw/~sheujp/images/NTHU_JP_SHEU_BARA.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/images/nthu_bar.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/images/NTHU_JP_BARB.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/images/jp_name_bar.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/profemail.gif

# English Vitae
mkdir -p vitae_en
cd vitae_en
for i in {1..9}; do
    wget "http://hscc.cs.nthu.edu.tw/~sheujp/images/Vitae0228(English)/E${i}.jpg"
done
cd ..

# Chinese Vitae
mkdir -p vitae_zh
cd vitae_zh
for i in {1..5}; do
    wget "http://hscc.cs.nthu.edu.tw/~sheujp/images/Vitae0228(Chinese)/C${i}.jpg"
done
cd ..

# Research
mkdir -p research
cd research
wget http://hscc.cs.nthu.edu.tw/~sheujp/module/image/RSCH_t2.gif
wget http://hscc.cs.nthu.edu.tw/~sheujp/module/image/20181024.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/module/image/20181018.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/module/image/20191126_UAV.png
wget http://hscc.cs.nthu.edu.tw/~sheujp/module/image/20211105_5G.png
cd ..

# Student Project
mkdir -p project
cd project
wget http://hscc.cs.nthu.edu.tw/~sheujp/picture_icon/arrow_002.gif
cd ..

# Awards
mkdir -p awards
cd awards
wget http://hscc.cs.nthu.edu.tw/~sheujp/public/awards/20151.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/public/awards/20152.jpg
wget http://hscc.cs.nthu.edu.tw/~sheujp/public/awards/20162.jpg
cd ..

# Album (sample)
mkdir -p album
cd album
wget http://hscc.cs.nthu.edu.tw/~sheujp/images/tecoaward/5R1A8516.JPG
wget http://hscc.cs.nthu.edu.tw/~sheujp/images/tecoaward/5R1A8502.JPG
cd ..

echo "Download complete."
