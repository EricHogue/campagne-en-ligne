exec { "apt_update":
  command => "apt-get update",
  path    => "/usr/bin"
}

class{'apache2::install':}
class{'php5::install':}
class{'curl':}
class{'composer':}
# class{'mysql::install':}