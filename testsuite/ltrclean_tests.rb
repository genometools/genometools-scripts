Name "ltrclean: runnable?"
Keywords "ltrclean"
Test do
  run_test("gt #{$cur}/gt-ltrclean -h")
end

Name "ltrclean: Dmel4 input file"
Keywords "ltrclean"
Test do
  run_test("gt #{$cur}/gt-ltrclean < #{$testdata}/ltrclean_in.gff3")
  run("diff #{last_stdout} #{$testdata}/ltrclean_out.gff3")
end

Name "ltrclean: ignored content"
Keywords "ltrclean"
Test do
  run_test("gt #{$cur}/gt-ltrclean < #{$testdata}/bequeath_1_in.gff3")
  run("diff #{last_stdout} #{$testdata}/bequeath_1_in.gff3")
end