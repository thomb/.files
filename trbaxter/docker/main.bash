docker_logs () {
	docker logs $1 2>&1| $@
}

dk_list () {
	docker ps -a;
}

dk_logs () {
	docker logs $1 2>&1
}

truxweb_ecomm () {
  docker run -d -p 3002:3002 \
  --env API_SERVER=https://idiywulvo9.execute-api.ca-central-1.amazonaws.com \
  --env CARRIER_BOOKING_DATA_ARCHIVE=carrier-booking-data-historical \
  --env CARRIER_BOOKING_DATA_BUCKET=carrier-booking-bucket \
  --env CARRIER_DATA_BUCKET_NAME=carrier-data-upload \
  --env CARRIER_DATA_BUCKET_REGION=ca-central-1 \
  --env CARRIER_ONBOARDING_DATA_BUCKET=carrier-onboarding-bucket \
  --env AWS_REGION=ca-central-1 \
  --env EXTERNAL_FORMS=true \
  --env GOOGLE_MAPS_API_KEY=AIzaSyAUNbGzDWY0bkdfYilGmVqG8D9nvaazJeA \
  --env IDENTITY_POOL_ID=ca-central-1:206f0824-2f17-422e-8ded-5c87b99d281b \
  --env SEARCH_LOCAL_STORAGE=TRUXWEB_SEARCH \
  --env SHIPMENT_DOCUMENT_UPLOAD=truxweb-shipment-documents \
  --env USER_POOLS_ID=ca-central-1_Ssi2NCwuj \
  --env WEB_CLIENT_ID=50ut4mhk9dpooos8f7ogt6j2f1 \
  --env CONTACT_EMAIL_ADDRESS=info@truxweb.com \
  --env BROWSER_RESTRICTION=false \
  --env IS_BROWSER_DETECTION_ENABLED=false $1
}
