# Using Python Slim-Buster 
FROM kyyex/kyy-userbot:buster

# print("Userbot Telegram")

RUN git clone -b Userbot https://github.com/apisuserbot/Userbot-Telegram /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

# Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/apisuserbot/Userbot-Telegram/Userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["bash","./telegram/userbot.sh"]
