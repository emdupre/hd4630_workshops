for subj in sub-?? ; do  # for each subject
    cd ${subj}  # move into their subject directory
    subnum=`echo $subj | cut '-' -f1`  # derive the subject number
    echo processing subject $subnum  # provide an update to the user
    # read in center-of-mass coords from func data and copy to anat file
    read x y z<<<$(echo `3dCM func/*task-flanker_run-1_bold.nii.gz`)
    3dCM -set $x $y $z anat/*.nii.gz  
    cd ..  # move out of subject directory
    done