function test_that_we_get_full_path() {
  local result
  local wdir=${PWD/$HOME/\~}
  local paths=${wdir//\//  }
  local clean_paths=$(echo "$paths" | perl -pe 's/^\s\s//')
  result=$("${sbp_path}/segments/path.bash" 0 0 "" 20)
  assert_equals " $clean_paths " "$result"
}
