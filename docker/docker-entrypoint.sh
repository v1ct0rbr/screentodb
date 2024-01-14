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

# Habilitar o módulo mod_rewrite para o Apache
a2enmod rewrite

# Verificar se o diretório /etc/apache2/sites-available existe
if [ -d "/etc/apache2/sites-available" ]; then
  # Aplicar a configuração de rewrite para o VirtualHost padrão
  # Isso irá ativar o RewriteEngine para o diretório /var/www/html
  {
    echo '<Directory "/var/www/html">'
    echo '    AllowOverride All'
    echo '</Directory>'
  } > /etc/apache2/sites-available/000-default.conf

  # Recarregar as configurações do Apache sem reiniciar o serviço
  sudo service apache2 restart
else
  echo "Diretório de configuração do Apache não encontrado."
fi

cd /var/www/html
chown -R www-data:www-data uploads smarty/cache smarty/configs smarty/templates_c

composer install;

apache2-foreground