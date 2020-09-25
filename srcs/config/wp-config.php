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
define( 'DB_USER', 'user42' );

/** MySQL database password */
define( 'DB_PASSWORD', 'user42' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define('AUTH_KEY',         '+yA3iv(2^ -y-uEt6(_[vp>gw^lC$^znJ)c_lp,=Pn43-U9ma%[]kr(+qx|xKt^]');
define('SECURE_AUTH_KEY',  'yKFwGodaq+@#^p.[.A~qw5H+|zBkbx2O`+3dQ|dRQ$b>kbS4qFHyh7`+%m~Ge%E^');
define('LOGGED_IN_KEY',    'mC|(A.`@9b|5?k]9NY3|MHARUg-Zu2+j=Nhu*n%lQ96ZVc<YuW6}@H+-:,1I2)D,');
define('NONCE_KEY',        'w-G0[sM7O8a#dl~c%^A/<,5BL*e~%J`dipNGY3ic*!SV;8z+kjn>9??.,!ceou5f');
define('AUTH_SALT',        'z7|Gbu@iQ;0?|MeLRMn!uM@%|((uR%<)5&5o=XFe[[[6[(z!KO+1PG#%C(71=GAy');
define('SECURE_AUTH_SALT', 'hVvzM5oc%MS);P-y+;=xR8H*%c!vxKy]g1FbYxrFg*fG| MPg0`(t00N1c8==`l)');
define('LOGGED_IN_SALT',   'NI+-Ej>,Ma2_puJ0Zd(Fj>pBZlt;yL+u%weJl7{u-Ot3^>4|BHoF?n4e}IYxL!9m');
define('NONCE_SALT',       '7:NalWe]*F81HF7|z~V/T n85{Z(6T+!+UZ|i~T|*XAo:[*FUKF?JZ|Q>vJLK$Qu');

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
