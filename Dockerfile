FROM python:3.11

ENV PYTHONUNBUFFERED 1

WORKDIR /College-ERP-Dep

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /College-ERP-Dep/

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "college_management_system.wsgi:application"]
