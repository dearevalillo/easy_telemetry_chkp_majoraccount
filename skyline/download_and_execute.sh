#!/bin/bash

# Load Check Point environment variables
source /etc/profile.d/CP.sh

# URL of the files to download
url_script="https://raw.githubusercontent.com/dearevalillo/easy_telemetry_chkp_majoraccount/master/skyline/check_and_deploy_skyline.sh"
url_json="https://raw.githubusercontent.com/dearevalillo/easy_telemetry_chkp_majoraccount/master/skyline/payload-no-tls.json"

# Names of files to download
filescriptsh="check_and_deploy_skyline.sh"
filejson="payload-no-tls.json"

# Download the files with curl
curl_cli -kO "${url_script}"
curl_cli -kO "${url_json}"

# Get the path of the downloaded files
pathfilescriptsh=$(realpath "${filescriptsh}")

# Give execute permissions to the file
chmod +x "${pathfilescriptsh}"

pathfilejson=$(realpath "${filejson}")

# Parameterize an entry to call another script
echo "##################################################################################"
echo "##################################################################################"
echo "Enter the IP(X.X.X.X.X) of the server where we have deployed the telemetry stack."
read param
echo "##################################################################################"
echo "##################################################################################"

sleep 10s

#Call the check_and_deploy_skiline.sh script with the appropriate parameters
${pathfilescriptsh} "${filejson}" ${param}

#Delete the script and files after deployment
rm "${pathfilescriptsh}" "${filejson}"
