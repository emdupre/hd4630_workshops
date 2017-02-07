#!/bin/bash

curl -o ds102_R2.0.0.tgz http://openfmri.s3.amazonaws.com/tarballs/ds102_R2.0.0_all_data.tgz
tar -xvzf ds102_R2.0.0.tgz
rm ds102_R2.0.0.tgz

curl -o ds000164_R1.0.0.zip https://s3.amazonaws.com/traverses3-openfmri/ds000164/ds000164_R1.0.0/compressed/ds000164_R1.0.0_sub001-028.zip
unzip ds000164_R1.0.0.zip
rm ds000164_R1.0.0.zip

mkdir $HOME/Desktop/hd4630_workshops/data
mv ds102_R2.0.0 $HOME/Desktop/hd4630_workshops-master/data/Flanker_task
mv ds000164_R1.0.0 $HOME/Desktop/hd4630_workshops-master/data/Stroop_task
