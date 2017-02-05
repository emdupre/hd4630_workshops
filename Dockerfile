# Set the base image to Ubuntu
FROM ubuntu:trusty

# File Author / Maintainer
MAINTAINER Elizabeth DuPre

# Environmental variables
ENV HOME /home

# Update the sources list and install basic applications
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
tar \
curl \
nano \
dialog \
# net-tools \ 
build-essential \
unzip 

# AFNI dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
tcsh \
libxp6 \
xfonts-base \
python-qt4 \
libmotif4 \
libmotif-dev \
motif-clients \
gsl-bin \
netpbm \
gnome-tweak-tool \
libjpeg62 \
libglu1 \
libpng-dev \
libxext-dev \
libxrender-dev \
libxtst-dev \
freetype* \
libfreetype6-dev \
liblapack-dev \
libatlas-base-dev \
gfortran \
pkg-config \
software-properties-common


# download AFNI binaries
RUN touch /home/.bashrc
RUN touch /home/.bash_profile
RUN curl -O https://afni.nimh.nih.gov/pub/dist/bin/linux_fedora_21_64/@update.afni.binaries
RUN tcsh @update.afni.binaries -package linux_openmp_64 -do_extras


# set up R binaries
RUN mkdir /home/R
RUN echo 'export R_LIBS=/home/R' >> /home/.bashrc
RUN curl -O https://afni.nimh.nih.gov/pub/dist/src/scripts_src/@add_rcran_ubuntu.tcsh
RUN sudo tcsh @add_rcran_ubuntu.tcsh
RUN /home/abin/rPkgsInstall -pkgs ALL

# Install missing R dependencies
RUN R -e 'install.packages("afex", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("phia", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("snow", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("lme4", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("paran", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("psych", repos = "http://cran.us.r-project.org")'


# Default AFNI profile settings
RUN cp /home/abin/AFNI.afnirc /home/.afnirc
RUN echo 'export PATH=$PATH:/home/abin' >> /home/.bash_profile
RUN echo 'export DYLD_FALLBACK_LIBRARY_PATH=/home/abin' >> /home/.bash_profile
RUN echo "source /home/.bashrc" >> /etc/bash.bashrc
RUN echo "source /home/.bash_profile" >> /etc/bash.bashrc


# X11 installation 
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/student && \
    echo "student:x:${uid}:${gid}:Student,,,:/home/student:/bin/bash" >> /etc/passwd && \
    echo "student:x:${uid}:" >> /etc/group && \
    echo "student ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/student && \
    chmod 0440 /etc/sudoers.d/student && \
    chown ${uid}:${gid} -R /home/student


# Set new environmental variables
USER student
WORKDIR /home/student
RUN mkdir /home/student/data
RUN mkdir /home/student/code

