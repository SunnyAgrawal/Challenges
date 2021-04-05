## Before you run the command, you need to setup gcloud 

# Get current region
region_name_default=$(gcloud config get-value compute/region)

# Set Compute instance region
read -p "Enter Compute Instance Region [$region_name_default]:" region_name
region_name="${region_name:-$region_name_default}"
gcloud config set compute/region $region_name

# Get current zone
zone_name_default=$(gcloud config get-value compute/zone)

# Set Compute instance zone
read -p "Enter Compute Instance Zone [$zone_name_default]:" zone_name
zone_name="${zone_name:-$zone_name_default}"
gcloud config set compute/zone $zone_name

#For the entire Meta data associated with the instance
read -p 'Instance id:' instanceId

gcloud compute instances describe $instanceId --format json > compute-metadata.json
