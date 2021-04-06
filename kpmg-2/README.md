# Prerequisite
Install and configure Google Cloud SDK
https://cloud.google.com/sdk/docs/quickstart

## There are two ways to solve this challange 

#1 - Use gcloud Cli, where you need to configure gcloud sdk before you execute the below script
```
sh getmetadata.sh
```

It will save the output in the json file named as `compute-metadata.json` in the same directory.

#2 - Use google cloud compute api which is exposed at http://metadata.google.internal/computeMetadata/v1/ url
