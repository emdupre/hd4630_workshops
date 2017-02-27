docker run -ti -e DISPLAY=$1:0 \
-v $HOME/Desktop/hd4630_workshops-master/data/:/home/student/data/ \
-v $HOME/Desktop/hd4630_workshops-master/code/:/home/student/code/ \
--rm emdupre/hd4630_workshops