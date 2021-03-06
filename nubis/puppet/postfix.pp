# Global settings to enable SES
include postfix

postfix::config::maincfhelper { "smtp_use_tls":
  value => "yes"
}
postfix::config::maincfhelper { "smtp_tls_security_level":
  value => "encrypt"
}
postfix::config::maincfhelper { "smtp_tls_note_starttls_offer":
  value => "yes"
}
postfix::config::maincfhelper { "smtp_tls_CAfile":
  value => "/etc/ssl/certs/ca-bundle.crt"
}
postfix::config::maincfhelper { "smtp_sasl_auth_enable":
  value => "yes"
}
postfix::config::maincfhelper { "smtp_sasl_security_options":
  value => "noanonymous"
}
postfix::config::maincfhelper { "smtp_sasl_password_maps":
  value => "hash:/etc/postfix/sasl_passwd"
}
