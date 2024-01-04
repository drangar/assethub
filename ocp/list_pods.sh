export OC_LOGIN_ENDPOINT="$(ocloginendpoint)"
export OC_LOGIN_TOKEN="$(oclogintoken)"
oc login --token=$OC_LOGIN_TOKEN --server=$OC_LOGIN_ENDPOINT
oc get pods -A