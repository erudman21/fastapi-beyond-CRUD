#!/bin/bash
set -e

FROM_EMAIL="amara.crooks91@ethereal.email"

email_content=$(cat <<EOF
Subject: $1
To: ${TO_EMAIL}
From: ${FROM_EMAIL}

$1
EOF
)

curl --url "smtp://smtp.ethereal.email:587" \
     --ssl-reqd \
     --mail-from "${FROM_EMAIL}" \
     --mail-rcpt "${TO_EMAIL}" \
     --user "amara.crooks91@ethereal.email:sAHGYMsJFadehtu7j6" \
     -T <(echo "$email_content")
