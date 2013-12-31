set['rbenv']['rubies'] = [ "2.0.0-p353" ]

set['rbenv']['gems'] = {
  '2.0.0-p353' => [
    { 'name'    => 'bundler' }
  ]  
}

set['ruby_build']['upgrade'] = true
