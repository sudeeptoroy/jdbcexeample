INSERT INTO BUILDDB (id, name, vulnerability, full_config, created_at, updated_at)
VALUES (1, 'test1', true, '{"variables":{"aws_access_key":"","aws_secret_key":""},"builders":[{"type":"amazon-ebs","access_key":"{{user `aws_access_key`}}","secret_key":"{{user `aws_secret_key`}}","region":"us-west-1","source_ami_filter":{"filters":{"virtualization-type":"hvm","name":"*ubuntu*","root-device-type":"ebs"},"owners":["099720109477","self","679593333241"],"most_recent":true},"instance_type":"t2.micro","ssh_username":"ubuntu","ami_name":"demo_rahul_{{timestamp}}"},{"type":"googlecompute","ssh_username":"ubuntu","account_file":"account.json","project_id":"striking-scout-194418","source_image":"ubuntu-1710-artful-v20180126","zone":"us-central1-a"},{"type":"digitalocean","api_token":"3423453253253526","image":"ubuntu-16-04-x64","region":"nyc3","size":"512mb","ssh_username":"root"}],"provisioners":[{"type":"shell","inline":["sleep 30","sudo apt-get update","sudo apt-get install software-properties-common","sudo apt-get install -y python redis-server ansible"]},{"type":"ansible","playbook_file":"ansible/playbook.yml"}]}', '2038-01-09 03:14:07', '2038-01-09 03:14:07');

INSERT INTO BUILDDB (id, name, vulnerability, full_config, created_at, updated_at)
VALUES (2, 'test2', true, '{"variables":{"aws_access_key":"","aws_secret_key":""},"builders":[{"type":"amazon-ebs","access_key":"{{user `aws_access_key`}}","secret_key":"{{user `aws_secret_key`}}","region":"us-west-1","source_ami_filter":{"filters":{"virtualization-type":"hvm","name":"*ubuntu*","root-device-type":"ebs"},"owners":["099720109477","self","679593333241"],"most_recent":true},"instance_type":"t2.micro","ssh_username":"ubuntu","ami_name":"demo_rahul_{{timestamp}}"},{"type":"googlecompute","ssh_username":"ubuntu","account_file":"account.json","project_id":"striking-scout-194418","source_image":"ubuntu-1710-artful-v20180126","zone":"us-central1-a"},{"type":"digitalocean","api_token":"6346343634537563634","image":"ubuntu-16-04-x64","region":"nyc3","size":"512mb","ssh_username":"root"}],"provisioners":[{"type":"shell","inline":["sleep 30","sudo apt-get update","sudo apt-get install software-properties-common","sudo apt-get install -y python redis-server ansible"]},{"type":"ansible","playbook_file":"ansible/playbook.yml"}]}', '2038-01-09 03:14:07', '2038-01-09 03:14:07');


INSERT INTO BASEIMAGE (id, name, aws_Image_Url, google_Image_Url, digital_Image_Url, created_at, updated_at)
VALUES (1, 'ubuntu', 'https://aws.ubuntu.ari', 'https://goo.ubuntu.img', 'https://digi.ubuntu.img', '2038-01-09 03:14:07', '2038-01-09 03:14:07');

INSERT INTO BASEIMAGE (id, name, aws_Image_Url, google_Image_Url, digital_Image_Url, created_at, updated_at)
VALUES (2, 'redhat', 'https://aws.redhat.ari', 'https://goo.redhat.img', 'https://digi.redhat.img', '2038-01-09 03:14:07', '2038-01-09 03:14:07');

INSERT INTO BASEIMAGE (id, name, aws_Image_Url, google_Image_Url, digital_Image_Url, created_at, updated_at)
VALUES (3, 'SUSE', 'https://aws.SUSE.ari', 'https://goo.SUSE.img', 'https://digi.SUSE.img', '2038-01-09 03:14:07', '2038-01-09 03:14:07');


INSERT INTO RPM (id, name, version, vulnerability, created_at, updated_at)
VALUES (1, 'vim', '7.4', false, '2038-01-09 03:14:07', '2038-01-09 03:14:07' );


INSERT INTO CVEDB (id, name, version)
VALUES (1, 'vim', '7.1');


INSERT INTO AWSCONFIG (id, type, access_key, secret_key, region, instance_type, ssh_username, ami_name, baseimage_id)
VALUES (1, 'amazon-ebs', 'ubuntu', 'efgh', 'us-west-1', 't2.micro', 'ubuntu', 'ubuntu' , 1);

INSERT INTO AWSCONFIG (id, type, access_key, secret_key, region, instance_type, ssh_username, ami_name, baseimage_id)
VALUES (2, 'amazon-ebs', 'redhat', 'efgh', 'us-west-1', 't2.micro', 'ubuntu', 'redhat' , 1);

INSERT INTO AWSCONFIG (id, type, access_key, secret_key, region, instance_type, ssh_username, ami_name, baseimage_id)
VALUES (3, 'amazon-ebs', 'SUSE', 'efgh', 'us-west-1', 't2.micro', 'ubuntu', 'SUSE' , 1);

INSERT INTO AWSCONFIG (id, type, access_key, secret_key, region, instance_type, ssh_username, ami_name, baseimage_id)
VALUES (4, 'amazon-ebs', 'windows server', 'efgh', 'us-west-1', 't2.micro', 'ubuntu', 'windows server' , 1);


INSERT INTO PROVISIONINGCONFIG (id, type, inline)
VALUES (1, 'shell', 'sleep 30, sudo apt-get update, sudo apt-get install software-properties-common, sudo apt-get install -y python redis-server ansible');

INSERT INTO PROVISIONINGCONFIG (id, type, inline)
VALUES (2, 'shell', 'sleep 30, sudo apt-get update, sudo apt-get install software-properties-common, sudo apt-get install -y python redis-server ansible');

INSERT INTO PROVISIONINGCONFIG (id, type, inline)
VALUES (3, 'shell', 'sleep 30, sudo apt-get update, sudo apt-get install software-properties-common, sudo apt-get install -y python redis-server ansible');

INSERT INTO PROVISIONINGCONFIG (id, type, inline)
VALUES (4, 'shell', 'sleep 30, sudo apt-get update, sudo apt-get install software-properties-common, sudo apt-get install -y python redis-server ansible');


INSERT INTO MASTERCONFIG (id, provisioning_id, awsconfig_id)
VALUES (1, 1, 1);

INSERT INTO MASTERCONFIG (id, provisioning_id, awsconfig_id)
VALUES (2, 2, 2);

INSERT INTO MASTERCONFIG (id, provisioning_id, awsconfig_id)
VALUES (3, 3, 3);

INSERT INTO MASTERCONFIG (id, provisioning_id, awsconfig_id)
VALUES (4, 4, 4);


