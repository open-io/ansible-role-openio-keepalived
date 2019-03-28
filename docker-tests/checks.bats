#! /usr/bin/env bats

# Variable SUT_ID should be set outside this script and should contain the ID
# number of the System Under Test.

# Tests
@test 'Ping VIP' {
  run  ping -c 1 172.17.0.101
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
}
