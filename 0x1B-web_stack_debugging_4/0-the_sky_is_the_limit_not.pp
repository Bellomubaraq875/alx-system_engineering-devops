# sky is the limit, let's bring that limit to the moon for now
exec { 'file limit':
  onlyif   => 'test -e /etc/default/nginx',
  command  => 'sed -i "5s/[0-9]\+/$( ulimit -n )/" /etc/default/nginx; service nginx restart',
  provider => shell,
}