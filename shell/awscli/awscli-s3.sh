#!/bin/bash
#print working directory
pwd

#access the folder mythical-misfits inside /etc
cd /etc/mythical-misfits

#sync local folder to a S3 bucket named mythical-misfits
aws s3 sync . s3://mythical-misfits/

#sync deleted files from local to S3 bucket
aws s3 sync . s3://mythical-misfits/ --delete
