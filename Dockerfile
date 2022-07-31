FROM ritnov/tlx:test-2

WORKDIR /usr/src/app

SHELL ["/bin/bash", "-c"]

RUN chmod 777 /usr/src/app




COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
