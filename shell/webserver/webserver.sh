#!/bin/bash
#update yum
yum update -y

#install httpd
yum install httpd -y

#install php
yum install php php-mysql -y

#create a hello_world.php
cat <<EOF > /var/www/html/hello_world.php
<?php
echo "Hello World";
?>
EOF
#create a index.html
cat <<EOF > /var/www/html/index.html
<html>
<body>
<h1>Hello World</h1>
</body>
</html>
EOF
#create a info.php
cat <<EOF > /var/www/html/info.php
<?php
phpinfo();
?>
EOF
#create a info.html
cat <<EOF > /var/www/html/info.html
<html>
<body>
<h1>Hello World</h1>
</body>
</html>
EOF

#start webserver
systemctl start httpd

#enable webserver
systemctl enable httpd
#check status
systemctl status httpd
#check version
httpd -v
#check logs
journalctl -u httpd.service

