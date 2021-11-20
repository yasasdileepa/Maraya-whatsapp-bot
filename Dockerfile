FROM fusuf/whatsasena:latest
##Maraya
RUN git clone https://github.com/yasasdileepa/Maraya-whatsapp-bot /root/Maraya
WORKDIR /root/Maraya/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
