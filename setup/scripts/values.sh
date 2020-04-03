# IBM Cloud account and registry where we want to push images to
export ACCOUNT_API_KEY='uE7vv26f6ZndWD8C7JA7m8pPBHx1WtEv4i853xbG3CHd'
export ACCOUNT_REGION='us-south'
#Account needs to have pull/push access to this container registry. Deployment files need to be updated with this path.
export CONTAINER_REGISTRY_PATH='us.icr.io/insurance_test'

# SGX cluster where we want to deploy
export CLUSTER_API_KEY="uE7vv26f6ZndWD8C7JA7m8pPBHx1WtEv4i853xbG3CHd"
export CLUSTER_RESOURCE_GROUP='Default'
export CLUSTER_REGION='us-south'
export CLUSTER_NAME='mycluster/bpts5vad0lnqunih8lo0'
export CLUSTER_INGRESS_SECRET='mycluster-138429-e7b9f0d14700d5478c54256249ff5e85-0000'
export CLUSTER_INGRESS="cloud-fund.${CLUSTER_INGRESS_SECRET}.${CLUSTER_REGION}.containers.appdomain.cloud"

# Key Protect values
export KEY_PROTECT_INSTANCE="Key Protect-iy"
export KEY_PROTECT_MANAGEMENT_URL="crn:v1:bluemix:public:kms:us-south:a/10d5953a4ae3bcb588e62b724aa43d70:0a674e1f-d65a-493f-af65-054b0a304dd9:key:a46dae69-2bfc-440a-9864-e8a8f183e827"
export KEY_NAME="cloud-fund-key"

#DBaaS values
export RAW_DB_CONN='mongodb://$USERNAME:$PASSWORD@057d2033-c179-42f5-933a-ea087d121925-0.blijtlfd05jdimoomdig.databases.appdomain.cloud:30809,057d2033-c179-42f5-933a-ea087d121925-1.blijtlfd05jdimoomdig.databases.appdomain.cloud:30809/ibmclouddb?authSource=admin&replicaSet=replset'
export RAW_DB_PASSWORD='skylertesting'
export RAW_DB_USERNAME='admin'
export RAW_DB_NAME='ibmclouddb'
export ENCODED_CERT='
MIIDDzCCAfegAwIBAgIJANEH58y2/kzHMA0GCSqGSIb3DQEBCwUAMB4xHDAaBgNV
BAMME0lCTSBDbG91ZCBEYXRhYmFzZXMwHhcNMTgwNjI1MTQyOTAwWhcNMjgwNjIy
MTQyOTAwWjAeMRwwGgYDVQQDDBNJQk0gQ2xvdWQgRGF0YWJhc2VzMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA8lpaQGzcFdGqeMlmqjffMPpIQhqpd8qJ
Pr3bIkrXJbTcJJ9uIckSUcCjw4Z/rSg8nnT13SCcOl+1to+7kdMiU8qOWKiceYZ5
y+yZYfCkGaiZVfazQBm45zBtFWv+AB/8hfCTdNF7VY4spaA3oBE2aS7OANNSRZSK
pwy24IUgUcILJW+mcvW80Vx+GXRfD9Ytt6PRJgBhYuUBpgzvngmCMGBn+l2KNiSf
weovYDCD6Vngl2+6W9QFAFtWXWgF3iDQD5nl/n4mripMSX6UG/n6657u7TDdgkvA
1eKI2FLzYKpoKBe5rcnrM7nHgNc/nCdEs5JecHb1dHv1QfPm6pzIxwIDAQABo1Aw
TjAdBgNVHQ4EFgQUK3+XZo1wyKs+DEoYXbHruwSpXjgwHwYDVR0jBBgwFoAUK3+X
Zo1wyKs+DEoYXbHruwSpXjgwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOC
AQEAJf5dvlzUpqaix26qJEuqFG0IP57QQI5TCRJ6Xt/supRHo63eDvKw8zR7tlWQ
lV5P0N2xwuSl9ZqAJt7/k/3ZeB+nYwPoyO3KvKvATunRvlPBn4FWVXeaPsG+7fhS
qsejmkyonYw77HRzGOzJH4Zg8UN6mfpbaWSsyaExvqknCp9SoTQP3D67AzWqb1zY
doqqgGIZ2nxCkp5/FXxF/TMb55vteTQwfgBy60jVVkbF7eVOWCv0KaNHPF5hrqbN
i+3XjJ7/peF3xMvTMoy35DcT3E2ZeSVjouZs15O90kI3k2daS2OHJABW0vSj4nLz
+PQzp/B9cQmOO8dCe049Q3oaUA==
'

# App ID configuration
export APP_ID_CLIENT_ID="92c6b2f8-8c76-4694-9818-ec26f3833347"
export APP_ID_CLIENT_SECRET="NjE2OTViOTYtOTk5YS00ODMwLWJkNGUtNjA1ODI0MTkzMWE1"
export APP_ID_TENANT_ID="8731643c-c9a8-4560-badc-b03910d9aa08"
export APP_ID_REGION="us-south"
# These do not need to be touched, since they take the App Id configuration from above
export RAW_APP_ID_CONFIG='{"clientId": "'${APP_ID_CLIENT_ID}'", "oauthServerUrl": "https://'${APP_ID_REGION}'.appid.cloud.ibm.com/oauth/v4/'${APP_ID_TENANT_ID}'", "profilesUrl": "https://'${APP_ID_REGION}'.appid.cloud.ibm.com", "secret": "'${APP_ID_CLIENT_SECRET}'", "tenantId": "'${APP_ID_TENANT_ID}'"}'
export RAW_APP_ID_SIGN_UP_URL="https://${APP_ID_REGION}.appid.cloud.ibm.com/oauth/v4/${APP_ID_TENANT_ID}/authorization?client_id=${APP_ID_CLIENT_ID}&response_type=sign_up&redirect_uri=https://${CLUSTER_INGRESS}/ibm/bluemix/appid/callback&scope=appid_default"

# App URLs. If possible, do not touch them. If these need to be changed, then /deployments/cloud-fund-ingress.yml needs to be changed.
export RAW_BACKEND_URL='http://cloud-fund-backend-service:8500'
export RAW_BFF_URL="https://${CLUSTER_INGRESS}"
export RAW_FRONTEND_URL="https://${CLUSTER_INGRESS}"




### Cert Manager implementation ###

## In addition, Cert manager can be used with this application. For that, we would need to do the following steps:

# 1. Create Certificate Manager instance
# ibmcloud resource service-instance-create "${resource_group}_certs" cloudcerts free $region -g $resource_group

# 2. Getting instance id, which is basically the entire crn
# export cert_manager_instance_id=$(ibmcloud resource service-instance '${resource_group}_certs' --output json | jq -r .[0].crn)

# 3. URL Parsing crn value
# export cert_manager_instance_id2=$(python3 -c "import urllib.parse, sys; print(urllib.parse.quote_plus(sys.argv[1]))"  "$cert_manager_instance_id")

# 4. Call to create payload.json
# python3 "create_payload_from_pem_and_key.py"

# 5. Uploading certificate for frontend
#export crn=$(curl -X POST -H "Content-Type: application/json" -H "authorization: $iam_token" -d @cloudfund.json https://us-south.certificate-manager.cloud.ibm.com/api/v3/${cert_manager_instance_id2}/certificates/import | jq -r ._id)

# 6. Uploading certificate for bff
#export crn2=$(curl -X POST -H "Content-Type: application/json" -H "authorization: $iam_token" -d @bff.cloudfund.json https://us-south.certificate-manager.cloud.ibm.com/api/v3/${cert_manager_instance_id2}/certificates/import | jq -r ._id)


## Creating alb secret
# https://cloud.ibm.com/docs/containers?topic=containers-ingress

# 1. Login to ibmcloud

# 2. Export cluster configuration

# 3. Create secret for frontend certificate
# ibmcloud ks alb-cert-deploy --secret-name ${alb_secret_name} --cluster ${cluster} --cert-crn ${crn}

#4. Creating secret for bff frontend certificate
# ibmcloud ks alb-cert-deploy --secret-name ${alb_secret_name_bff} --cluster ${cluster} --cert-crn ${crn2}


