FROM maverick9099/mh:heroku

WORKDIR /usr/src/app

SHELL ["/bin/bash", "-c"]

RUN chmod 777 /usr/src/app

RUN apt -qq update && DEBIAN_FRONTEND="noninteractive"

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
