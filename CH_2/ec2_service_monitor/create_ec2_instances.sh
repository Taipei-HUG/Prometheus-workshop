aws ec2 create-key-pair --key-name prometheus-workshop --query 'KeyMaterial' --output text > prometheus-workshop.pem
aws ec2 run-instances --image-id ami-03804ed633fe58109 --count 3 \
     --instance-type t2.micro --key-name prometheus-workshop  \
     --user-data file://install_node_exporter.sh

aws ec2 describe-instances --filters "Name=instance-type,Values=m1.small"