#
#
class phalcon::params {
  $version = 'master'

  $php_config_dir = $::operatingsystem ? {
    /(?i:Ubuntu|Debian|Mint|SLES|OpenSuSE)/ => '/etc/php5',
    default                                 => '/etc/php.d',
  }

  $require_packages = $::operatingsystem ? {
    /(?i:Ubuntu|Debian|Mint)/ => ['php5', 'php5-dev', 'libpcre3-dev'],
    /(?i:SLES|OpenSuSe)/      => ['php5','php5-devel', 'pcre-devel'],
    default                   => ['php', 'php-devel', 'pcre-devel'],
  }
}
