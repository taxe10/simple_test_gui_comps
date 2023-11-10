FROM python:3.8
MAINTAINER THE MLEXCHANGE TEAM

RUN ls
COPY requirements.txt requirements.txt
RUN git clone https://github.com/mlexchange/mlex_dash_component_editor

RUN pip3 install --upgrade pip &&\
    pip3 install -r requirements.txt
    # pip install git+https://github.com/mlexchange/mlex_dash_component_editor


COPY fronty.py fronty.py
RUN mv mlex_dash_component_editor/src/dash_component_editor.py dash_component_editor.py

CMD python3 fronty.py