# create dir for db data & log files
dirs=( "log/nginx" "db/mariaDB/data" "db/couchDB/data" "../project" )

for dir in "${dirs[@]}"
do
  echo $dir
  if [ ! -d $dir ]
  then
    mkdir -p $dir
  fi
done

if [[ "$(docker images -q phalcon_php_unit:latest 2> /dev/null)" == "" ]]; then
  # do something
  docker build -t phalcon_php_unit:latest php
fi

# rename mac-docker-compose.yml to docker-compose.yml
cp -f mac-docker-compose.yml docker-compose.yml

docker-compose up -d
