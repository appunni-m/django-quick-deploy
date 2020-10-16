# My Site
# Version: 1.0
FROM tiangolo/meinheld-gunicorn:python3.6

# Project Files and Settings
WORKDIR /app

ARG PROJECT_NAME

# Copy the code
COPY ${PROJECT_NAME}/requirements.txt /app/

RUN pip install -r /app/requirements.txt

ENV PORT=8080
ENV MODULE_NAME=${PROJECT_NAME}.wsgi
ENV VARIABLE_NAME=application
ENV DJANGO_SETTINGS_MODULE ${PROJECT_NAME}.settings

COPY ${PROJECT_NAME}/ /app/

RUN chown -R 1000:1000 /app && mkdir /app/static && chown 1000:1000 /app/static

USER 1000