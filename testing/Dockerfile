FROM michaelwetter/ubuntu-1804_jmodelica_trunk

USER root

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y sudo

USER developer

ENV ROOT_DIR /usr/local

WORKDIR $HOME

RUN git clone https://github.com/ibpsa/modelica-ibpsa.git $HOME/git/ibpsa/modelica-ibpsa && \
    git clone https://github.com/lbl-srg/modelica-buildings.git $HOME/git/buildings/modelica-buildings && \
    git clone https://github.com/icupeiro/IDEAS.git $HOME/git/icupeiro/IDEAS && \
    cd $HOME/git/ibpsa/modelica-ibpsa && \
    cd $HOME/git/buildings/modelica-buildings && \
    cd $HOME/git/icupeiro/IDEAS && git fetch origin && git checkout -b issue1029_portVector origin/issue1029_portVector 

RUN python -m pip install --user flask-restful pandas==0.22.0 requests

WORKDIR $ROOT_DIR

ENV JMODELICA_HOME $ROOT_DIR/JModelica
ENV IPOPT_HOME $ROOT_DIR/Ipopt-3.12.4
ENV SUNDIALS_HOME $JMODELICA_HOME/ThirdParty/Sundials
ENV SEPARATE_PROCESS_JVM /usr/lib/jvm/java-8-openjdk-amd64/
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV PYTHONPATH $PYTHONPATH:$JMODELICA_HOME/Python:$JMODELICA_HOME/Python/pymodelica:/usr/local/testing
ENV MODELICAPATH $MODELICAPATH:$HOME/git/buildings/modelica-buildings:$HOME/git/ibpsa/modelica-ibpsa:$HOME/git/icupeiro/IDEAS:/usr/local/testing/multizone_commercial_hydronic/models/Modelica_StateGraph2
