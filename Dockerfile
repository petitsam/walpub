FROM nopid/walnut
COPY . ${HOME}
USER root
RUN jupyter trust notebooks/*.ipynb
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
