<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+=8osPU3V2aifK72]T_ee1`.R+5Fw5-~pjt@Ctz841l|3^$5x+Kn[X@O1nmaSd(1');
define('SECURE_AUTH_KEY',  '4Umg3P.0vgw_ndU$|`dz=3i{}Ki!MnjsZ-Qa226]t|qogJ`+m_5X?RUS#T|+z?|5');
define('LOGGED_IN_KEY',    '|:/f}j:GMU ?7L{Wo~U#a=Llmw9)hiaMVIE9KkW4f+>tl`>/hVGscworT+b-mnc`');
define('NONCE_KEY',        '7|[`=GxMnUKb]-q+_UpTq},b:IkIZ-5$V!bwS]~Lld4e/v|qqlKytbB`v^}n.MXL');
define('AUTH_SALT',        'nyl|De1qjb|58PE=fJ1P/@2dcQ1jb-t_[V.J-`!BVu<>i#4j(8?>0RJBW_9R<TG,');
define('SECURE_AUTH_SALT', 'c i%=204hif*;xiiYw<TtA+F(6WLgG/-V]n-y=egb+O!6XJF*NJwsVE~B7#9J]5R');
define('LOGGED_IN_SALT',   '7iAg.Rp%L2A1 B$93CMl-wg|v@g-b%neoGRgXey{=.y*vYF@XKk}/)XQ|$+(O  h');
define('NONCE_SALT',       'Sg|nc*w9I^2Z0=im]QeOBzQ]rxFs;07z8(IWH!$W4w!c:0gRG1uocD?Y+bJ( !+I');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
