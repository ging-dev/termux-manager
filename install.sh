# >_ Copyright by Gingdev 2020

ADDR=127.0.0.1:9876
BIN=$PREFIX/bin/manager

# Install PHP package
pkg install php

# Copy manager.php to ../index.php
cp manager.php ../index.php

# Set up alias
cat > $BIN <<EOF
cd ~
php -S $ADDR &
xdg-open http://$ADDR
wait
EOF

chmod +x $BIN
