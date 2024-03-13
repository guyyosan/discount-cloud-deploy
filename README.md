# Community Project


Creating and maintaing Community events.


## Going live - Getting started:
0. Create a "production" branch or fork the repository.
1. Create a BQ dataset
2. Create BQ tables, schemas json can be found in the schemas folder in the project root dir.
3. Create a cloud run trigger from your project. make sure you link it to the github project and to use the cloudbuid.yaml in the root dir.
4. Create a storage bucket for the project, name it however you want
5. Update consts.py
6. Run the build by pushing the commit.
7. On successful build check the deployed cloud run service and make sure it's configured as it's supposed to.
8. Create OAuth client ID: Web client and download the client secret and upload make sure to create a secret in secret manager and reference to it in your cloudrun service, mount it to: /usr/app/client_secret.json
![img.png](img.png)






## Demo

![Alt Text](https://github.com/guyyosan/community-api/blob/main/static/images/demo.gif)



## Running Tests

Go to the project directory

```bash
  cd community-api
```

To run tests, run the following command


```bash
  pytest .
```

## Run full-stack applicaion locally:

Clone the project

```bash
  git clone https://github.com/guyyosan/community-api/main
```

Go to the project directory

```bash
  cd community-api
```

Install dependencies

```bash
  pip install requirements.txt
```

Start the Flask server

```bash
  python app.py
```

**Running with docker:**

```bash
gcloud builds submit -t gcr.io/$GCP_PROJECT/community-api .
```

```bash
docker run -p 8000:8000 community
```

## Deployment

Trigger is already set on each push to build and deploy to main


## Argolis Env Users
Contact Guy through Google Chat to get your user.
