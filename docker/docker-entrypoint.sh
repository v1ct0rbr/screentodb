#!/bin/sh

# -----------------------------------------------------------------------------
# Screen to DB - Online Screen Capture saving do DB
#
# @package     Screentodb
# @author      Victor Queiroga <contato@victorqueiroga.com>
# @copyright   Copyright (c) Victor Queiroga
# @license     https://opensource.org/licenses/GPL-3.0 - GPLv3
# -----------------------------------------------------------------------------

##
# Usage:
#
#  ./docker-entrypoint.sh
#
cd /var/www/html/config

cp db_config.example.php db_config.php

sed -i "s|define('DB_HOST', '');|define('DB_HOST', '$DB_HOST');|g" db_config.php
sed -i "s|define('DB_NAME', '');|define('DB_NAME', '$DB_NAME');|g" db_config.php
sed -i "s|define('DB_USER', '');|define('DB_USER', '$DB_USERNAME');|g" db_config.php
sed -i "s|define('DB_PASSWORD', '');|define('DB_PASSWORD', '$DB_PASSWORD');|g" db_config.php

apache2-foreground