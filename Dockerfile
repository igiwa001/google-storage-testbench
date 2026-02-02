FROM python:3.13-slim

ADD https://github.com/googleapis/storage-testbench.git#v0.60.0 .
RUN pip install . --no-cache-dir

EXPOSE 9000
ENTRYPOINT ["python", "testbench_run.py", "0.0.0.0", "9000"]
CMD ["10"]
