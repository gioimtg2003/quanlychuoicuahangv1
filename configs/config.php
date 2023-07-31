<?php
$ip = file_get_contents(('http://ifconfig.me/ip'));
define('DB_HOST',$ip);
define('DB_USER','root');
define('DB_PASS','conggioi');
define('DB_NAME','quanlychuoicuahang');
define('LIMIT_PAGE', 12);
 ?>