# express-cloudrun

- ```gcloud auth login```
- ```gcloud services enable artifactregistry.googleapis.com```
- ```gcloud artifacts repositories create [REPOSITORY_NAME] \
    --repository-format=docker \
    --location=[LOCATION] \
    --description="Docker repository"```
- ```gcloud artifacts repositories list```
- ```gcloud auth configure-docker [LOCATION]-docker.pkg.dev```
- ```docker build -t [LOCATION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY_NAME]/[IMAGE_NAME]:[TAG] .```
//// For mac m1
- ```docker buildx build --platform linux/amd64 -t [LOCATION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY_NAME]/[IMAGE_NAME]:[TAG] .
- ```docker push [LOCATION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY_NAME]/[IMAGE_NAME]:[TAG]```

Congrats! Let setting on Cloud Run, this image will show in Artifact Registry 
