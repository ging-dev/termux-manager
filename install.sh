# >_ Copyright by Gingdev 2020

ROOT=/data/data/com.termux/files
ADDR=127.0.0.1:9876
BIN=$PREFIX/bin/manager

# Download script file
wget https://raw.githubusercontent.com/ging-dev/termux-manager/master/manager.php -O $ROOT/index.php

# Set up alias
cat > $BIN <<EOF
cd $ROOT
php -S $ADDR &
xdg-open http://$ADDR
wait
EOF

chmod +x $BIN
