FROM python:3.6

WORKDIR /code

RUN pip install --upgrade pip --index-url https://pypi.douban.com/simple

COPY web.html /code
COPY web.py /code

ARG port
ENV PORT=${port:-8000}

CMD ["sh","-c","python3 -m http.server $PORT"]