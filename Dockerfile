FROM arachni/arachni

RUN rm -f ./usr/local/arachni/system/arachni-ui-web/config/database.yml && \ 
      mv /usr/local/arachni/system/arachni-ui-web/config/database.yml.pgsql /usr/local/arachni/system/arachni-ui-web/config/database.yml && \
      ./usr/local/arachni/bin/arachni_web_task db:setup

EXPOSE 9292
