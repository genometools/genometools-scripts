Name "bequeath: runnable?"
Keywords "bequeath"
Test do
  run_test("gt #{$cur}/gt-bequeath", :retval => 1)
  grep last_stderr, 'given parent attribute to all child'
end