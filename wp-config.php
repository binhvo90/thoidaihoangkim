<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define('DB_NAME', 'thoidaihoangkim');

/** Username của database */
define('DB_USER', 'root');

/** Mật khẩu của database */
define('DB_PASSWORD', '');

/** Hostname của database */
define('DB_HOST', 'localhost');

/** Database charset sử dụng để tạo bảng database. */
define('DB_CHARSET', 'utf8mb4');

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '(y$`YK2v^4fLh3:]fMZM8t?(Ej!w+_$980]#h(Ef-6Zg7<gadV[@{Gx/K-(` VjR');
define('SECURE_AUTH_KEY',  '9tIFynxjWF$MHLUcg&p+qPXD>$dn|E@!2IfU~ ak{ENj3k*~_?H]UL]l>=~?U2v~');
define('LOGGED_IN_KEY',    'u>}`eC}phL`v/:sU9Ng&w[iht>5l}~EhMx^*a-/sFZXO~do${!j nd;MQJjsJ{<P');
define('NONCE_KEY',        '1iF~jo]+Q#DGr><gA1omJU+B$:~S?O@+o[Oc#=l9!%ZVtq1_WgA{H*6HBPnnR0^7');
define('AUTH_SALT',        'f34Twhn{]1usIqn`.%Qu7+Tk/^~c4KeQHoS/z+)*xx=J%%(uZg5P}l)5@,~l>V)+');
define('SECURE_AUTH_SALT', 'pC-[nV1#?ER0YbkK9Vns.D]Kf|/9L_::$_bntD9[n )vsCZ-v_0[Xo;{QB,F(*xG');
define('LOGGED_IN_SALT',   '.=yv#@br{SR)&#-{f1H5b[Hb%z!$r)^EDxW]MR-$&]Il2n{4[jZR0tqd$&E5a,Z5');
define('NONCE_SALT',       'Fw.TU~UzH!QG%}[Z-GqVTLtXk[.7H0T)=.nE;dMn:YWB,YkVWotw=D;+Z(Dv]@$#');

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');
