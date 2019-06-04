# Documentation

First build the docker image:

```
docker build -t django_application_image .
```

Then run the docker image:

```
docker run -p 8000:8000 -i -t django_application_image
```

If you prefer, enter in the hello_world directory and:

'''
pip install -r requirements.txt
'''

'''
python manage.py runserver
'''
