<?php

defined("LIBRARY_PATH")
    or define("LIBRARY_PATH", realpath(dirname(__FILE__) . '/library'));

defined("TEMPLATES_PATH")
    or define("TEMPLATES_PATH", dirname(__DIR__) . '/templates');

defined("PUBLIC_PATH")
    or define("PUBLIC_PATH", dirname(__DIR__) . '/public');

defined("ROOT_PATH")
    or define("ROOT_PATH", dirname(__DIR__));
?>
