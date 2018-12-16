<?php

// Frontend origin
require_once 'inc/frontend-origin.php';

// ACF commands
require_once 'inc/class-acf-commands.php';

// Logging functions
require_once 'inc/log.php';

// CORS handling
require_once 'inc/cors.php';

// Admin modifications
require_once 'inc/admin.php';

// Add Menus
require_once 'inc/menus.php';

// Add Headless Settings area
require_once 'inc/acf-options.php';

// Add custom API endpoints
require_once 'inc/api-routes.php';

add_theme_support('post-thumbnails');
set_post_thumbnail_size( 50, 50 ); // 50 pixels wide by 50 pixels tall, box resize mode
add_image_size( 'single-post-thumbnail', 400, 9999 ); // Permalink thumbnail size