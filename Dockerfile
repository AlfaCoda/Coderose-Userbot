# Using Python Slim-Buster
FROM sendiap/roseuserbot:buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Rose-Userbot ━━━━━

RUN git clone -b Rose-Userbot https://github.com/AlfaCoda/Coderose-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://github.com/AlfaCoda/Coderose-Userbot/Rose-Userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
