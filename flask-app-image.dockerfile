# use the `mongo` image
# copy the app directory and any files needed for your implementation from your local to the container
# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
# expose the port flask app will run on

FROM python:latest
COPY /app /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV PORT 5001
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]