FROM python:slim

COPY requirements.txt /root/
RUN pip install -U pip \
    && pip install -r /root/requirements.txt

COPY main.py start.sh /root/
RUN chmod +x /root/start.sh
ENTRYPOINT [ "/root/start.sh" ]
