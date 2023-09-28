FROM dperson/samba

COPY ../configurar.sh /configurar.sh
RUN chmod +x /configurar.sh

ENTRYPOINT [ "/configurar.sh" ]