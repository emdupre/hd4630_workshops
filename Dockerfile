# Set the base image to Ubuntu
FROM ubuntu:trusty

# File Author / Maintainer
MAINTAINER Elizabeth DuPre

# Environmental variables
ENV HOME /home

# Update the sources list and install basic applications
RUN apt-get update && apt-get install -y --no-install-recommends \
tar \
git \
curl \
nano \
wget \
dialog \
net-tools \ 
build-essential \
unzip \

# AFNI dependencies
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

# Dependencies for python libs
libpng-dev \
freetype* \
libfreetype6-dev \
liblapack-dev \
libatlas-base-dev \
gfortran \
pkg-config \
software-properties-common \

# Install Python and various packages
python \
python-dev \ 
python-distribute \ 
python-pip \
python-numpy \ 
python-scipy \
python-matplotlib \ 
ipython \ 
ipython-notebook \ 
python-pandas \ 
python-sympy \
python-lxml \
python-tk


# Get pip to download and install requirements:
ADD requirements.txt hd4630_workshops/requirements.txt
WORKDIR hd4630_workshops
RUN pip install -r requirements.txt


ADD . hd4630_workshops


# download AFNI binaries
RUN touch /root/.bashrc
RUN touch /root/.bash_profile
RUN curl -O https://afni.nimh.nih.gov/pub/dist/bin/linux_fedora_21_64/@update.afni.binaries
RUN tcsh @update.afni.binaries -package linux_openmp_64 -do_extras


# set up R binaries
RUN mkdir /home/R
RUN echo 'export R_LIBS=/home/R' >> /root/.bashrc
RUN curl -O https://afni.nimh.nih.gov/pub/dist/src/scripts_src/@add_rcran_ubuntu.tcsh
RUN sudo tcsh @add_rcran_ubuntu.tcsh
RUN /home/abin/rPkgsInstall -pkgs ALL


# Default AFNI profile settings
RUN cp /home/abin/AFNI.afnirc /home/.afnirc
RUN echo 'export PATH=$PATH:/home/abin' >> /root/.bash_profile
RUN echo 'export DYLD_FALLBACK_LIBRARY_PATH=/home/abin' >> /root/.bash_profile
RUN /bin/bash -c "source /root/.bashrc"
RUN /bin/bash -c "source /root/.bash_profile" 


# X11 Access
ENV USERNAME developer
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer


