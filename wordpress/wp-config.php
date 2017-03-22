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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_projektas');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'DOb]Bv)1j8QK%uB43vyTke7  HQ9z]T|Zn<OkBuTRZmE<i|}?rXcGJcd?paA^f$;');
define('SECURE_AUTH_KEY',  ',?; ; {EgP^tYWfLWLt 3v%!]96zBA53O4Wee@;unT#<[<D6U^jPZzu?@moeh[W4');
define('LOGGED_IN_KEY',    '}qM3ay5DfFR!+%`A49{rDT<#FSrf9Nu;!9>]`V]ZeeUvH21jKHv(6xA[H4XQ7mV{');
define('NONCE_KEY',        '!6Ss-lq<y#XYKx>02kW;.#<#[5(JsjX%QcP$/-qSQ[gR/Ph#w2+Bb{9fwK X-?^g');
define('AUTH_SALT',        ';(e4_Y}qS0c=?s_BQ^(aH0,5LlWv~Y[Mk/*=g-Ot(@FzA^<lNfd0ea[.Op_.KXf ');
define('SECURE_AUTH_SALT', ';bhUaq[`Tu;N#tqI2p^s3~FyBP32Y;Wz(mrJ!{HMtS@i&6i.5Yr}z&{jm2>Ke`z!');
define('LOGGED_IN_SALT',   'sK?)l~Yiv}/{e4^A&)B];|%>t;_W>L`!N/LnY4-pXu%qe7(dM{Up|.AUhJ(Qn^tw');
define('NONCE_SALT',       'CtQ48B5J~ h)4_E+4n0Hc[]zn+mQO@>VRF)*{y{~r~o0NdU4.;Iz9yBeADJ3o-,_');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
