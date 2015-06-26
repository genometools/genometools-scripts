Name "bequeath: runnable?"
Keywords "bequeath"
Test do
  run_test("gt #{$cur}/gt-bequeath -h")
  grep last_stdout, 'given parent attribute to all child'
end