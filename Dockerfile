FROM nopid/walnut
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
RUN jupyter trust ${HOME}/notebooks/*.ipynb
