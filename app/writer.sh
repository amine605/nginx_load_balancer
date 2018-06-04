check_host () {
if ping -c 1 $1  &> /dev/null
then
  echo "$1 added to as host"
else
  echo "$1 is not a reachable server"
  echo "... exiting"
  exit 1
fi
}

echo "upstream backend  {" > /etc/nginx/conf.d/default.conf
for var in "$@"
do
   check_host $var
   echo "server $var;" >> /etc/nginx/conf.d/default.conf
done  
echo "}
 server {
  location / {
    proxy_pass  http://backend;
  }
}
"  >> /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'

