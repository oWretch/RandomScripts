# Generate Lets Encrypt wildcard certificate.
# Based on https://github.com/acmesh-official/acme.sh/wiki/Synology-NAS-Guide

# Run under sudo su -

# Install acme.sh
cd ~
wget https://github.com/acmesh-official/acme.sh/archive/master.tar.gz
tar xvf master.tar.gz
cd acme.sh-master/
./acme.sh --install --nocron --home /usr/local/share/acme.sh --accountemail "email@example.com"
source ~/.profile

# Configure CloudFlare API variables
# The last two variables allow scoping the API token to a specific DNS Zone for security.
export CF_Email="email@example.com"
export CF_Token="MY_SECRET_TOKEN_SUCH_SECRET"
export CF_Account_ID="CLOUDFLARE_ACCOUNT_ID"
export CF_Zone_ID="DNS_ZONE_ID"

# Create the certificate
cd /usr/local/share/acme.sh
./acme.sh --issue \
          --home . \
          --domain "dailyfuneral.com" \
          --domain "*.dailyfuneral.com" \
          --domain "*.home.dailyfuneral.com" \
          --dns "dns_cf" \
          --ocsp-must-staple

# Deploy the certificate into Synology
export SYNO_Username='Admin_Username'
export SYNO_Password='Admin_Password!123'
export SYNO_Certificate=""
./acme.sh --deploy \
          --home . \
          --domain "dailyfuneral.com" \
          --deploy-hook synology_dsm

# Deploy the certificate for Docker users
./acme.sh --install-cert \
          --home . \
          --domain "dailyfuneral.com" \
          --cert-file /volume1/docker/certs/dailyfuneral.com/cert.pem \
		  --key-file /volume1/docker/certs/dailyfuneral.com/privkey.pem \
		  --fullchain-file /volume1/docker/certs/dailyfuneral.com/fullchain.pem
