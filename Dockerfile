FROM continuumio/miniconda3:4.9.2

WORKDIR /getdist

RUN apt install -y libgl1-mesa-dev libxcb-icccm4 libxcb-image0 libxcb-util0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0 libdbus-1-3 libfontconfig1 libxcb-xinerama0

RUN ln -s /usr/lib/x86_64-linux-gnu/libxcb-util.so.0.0.0 /usr/lib/x86_64-linux-gnu/libxcb-util.so.1

RUN pip install getdist PySide2 pandas
