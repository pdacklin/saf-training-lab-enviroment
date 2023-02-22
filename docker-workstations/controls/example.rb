# copyright: 2018, The Authors

describe yaml('docker-compoyaml') do
  its('setting') { should_not eq 'value' }
end