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

// ** MySQL settings ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp' );

/** MySQL database username */
define( 'DB_USER', 'wpuser' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ' rDVK>ftB=e$Pkl8<Qa6U%TuJJqf8_>>`;<:l?-G2JV9;?)ldB]Of`iP%U-OPZ0F');
define('SECURE_AUTH_KEY',  '&f/I!X[eg}coK!Tf+BsNNn}HpFjr3Ys0WRnLG+D bA*(A-rJR~bK~:jlSEi`Cn+4');
define('LOGGED_IN_KEY',    'l6QbG<sh*J$WWU:Y,2zS3RJ~1+#9b~[;!nytJlRb$^+CfOf*@1+?|[Wqv3CkDR7l');
define('NONCE_KEY',        'SpwD#=kG ^Nn7|$kCrN<|;degJCd9cuS4{mZ;nA;@_iSo)?j?#PWWwBX3j$zN[KR');
define('AUTH_SALT',        '44,,E~)r+W2WwXXd_V0+-4L|>BSDV<aKbO0zg]wExL0D!vz17E|][_O74:=OR&,D');
define('SECURE_AUTH_SALT', '(c7:3d:+VwC2YOc[B+Nj|+pHb0O-}peqMm`KJ7L>o gm.<)okMo?pBu0(.h|b!/I');
define('LOGGED_IN_SALT',   'WtY&SU|#i$m dF4@?mSsnj`{:Fhym|Q+t[x KQ,*r5c8A/$pgJLPCx^-R_UhQdhY');
define('NONCE_SALT',       'XE+Erar}YC($Q,L+0zBc#]8zf{UVc(3|`+4b;QBl:5?J+~O!4@S<0+YH~WUBqB$ ');


/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
