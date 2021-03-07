FROM cypress/included:6.6.0

# create what working directory shoud be in docker image
WORKDIR /cypress

#copy contents from locall main directory to cypress directory main in docker which /cypress
COPY . .

ARG BROWSER
ENV BROWSER="${BROWSER}"

#building to the layer of our docker image
RUN npm install

ENTRYPOINT [""]

#what to run after you add all the layers. This  is the command you want to rundocker
CMD npx cypress run --browser "${BROWSER}" --headless


# CREAT VOulume container, and we map contents to /cypress/cypress/videos/
#  to our local directory

