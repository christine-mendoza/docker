sudo docker run -v /home/ec2-user/secretdir:/secretdir \
    --mount source=testMount,target=/app \
    -e IG_PASSWD_FILE=/secretdir/secret \
    -e IG_DATABASE=image_gallery \
    -e PG_HOST="image-gallery.cpni1ycia55k.us-east-1.rds.amazonaws.com" \
    -e PG_PORT="5432" \
    -e IG_DATABASE="image_gallery" \
    -e IG_USER="image_gallery" \
    -e S3_IMAGE_BUCKET="edu.au.cc.image-gallery-con" \
    -e AWS_ACCESS_KEY_ID="AKIAS3IXX7ONQSBACBEW" \
    -e AWS_SECRET_ACCESS_KEY="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" \
    -e AWS_DEFAULT_REGION=us-east-1 \
     cmendoza3/image_gallery sleep 300
