#!/bin/bash
set -e

FROM_EMAIL="yvonne25@ethereal.email"

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
     --user "yvonne25@ethereal.email:nX1ZKMv4NvGz76PjGM" \
     -T <(echo "$email_content")
