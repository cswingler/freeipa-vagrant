  class { 'ipa':
    master  => true, # Only one master per Puppet master
    domain  => 'example.org',
    realm   => 'EXAMPLE.ORG',
    adminpw => 'password',
    dspw    => 'password',
  }
