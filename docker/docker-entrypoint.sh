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

sed -i "s|const DEBUG_MODE    = FALSE;|const DEBUG_MODE    = $DEBUG_MODE;|g" settings.php

sed -i "s|const DB_HOST       = '';|const DB_HOST       = '$DB_HOST';|g" settings.php
sed -i "s|const DB_NAME       = '';|const DB_NAME       = '$DB_NAME';|g" settings.php
sed -i "s|const DB_USERNAME   = '';|const DB_USERNAME   = '$DB_USERNAME';|g" settings.php
sed -i "s|const DB_PASSWORD   = '';|const DB_PASSWORD   = '$DB_PASSWORD';|g" settings.php

apache2-foreground