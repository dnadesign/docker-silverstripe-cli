<?php
/* This file gives SilverStripe information about the environment that it's running in */
define('SS_ENVIRONMENT_TYPE', 'dev');

global $_FILE_TO_URL_MAPPING;
$_FILE_TO_URL_MAPPING['/var/www'] = 'http://localhost';

define('SS_DATABASE_USERNAME', 'root');
define('SS_DATABASE_PASSWORD', '');

/* additional settings configured from environment */
define('SS_DATABASE_SERVER', getenv('MYSQL_PORT_3306_TCP_ADDR'));
define('SS_DATABASE_NAME', "silverstripe_app_build_".getenv('CI_BUILD_ID'));
define('SOLR_HOST', getenv('SOLR_HOST'));
define('SOLR_PORT', getenv('SOLR_PORT'));
