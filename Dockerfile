# Let's start with a sample ubuntu image
FROM python:2.7.14-alpine3.7
MAINTAINER zhang.zhoujian (zhang.zhoujian@zhangzhoujian.com)

RUN pip install flask

# Exposing webservice port
EXPOSE 8001

# Add the PYthon script
ADD webservice.py /sample_ws/webservice.py

# Start the WS Python script
ENTRYPOINT ["python", "/sample_ws/webservice.py"]
