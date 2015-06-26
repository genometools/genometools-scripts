Name "bequeath: runnable?"
Keywords "bequeath"
Test do
  run_test("gt #{$cur}/gt-bequeath -h")
  grep last_stdout, 'given parent attribute to all child'
end

["Name", "name2", "foo"].each do |attr|
    Name "bequeath: simple test ('#{attr}')"
    Keywords "bequeath"
    Test do
      run_test("gt #{$cur}/gt-bequeath -a #{attr} < #{$testdata}/bequeath_1_in.gff3")
      run("diff #{last_stdout} #{$testdata}/bequeath_1_out.#{attr}")
    end
end

Name "bequeath: failure"
Keywords "bequeath"
Test do
  run("echo foobar > in.gff3")
  run_test("gt #{$cur}/gt-bequeath < in.gff3", :retval => 1)
end