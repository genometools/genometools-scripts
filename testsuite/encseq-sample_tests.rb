Name "encseq-sample: runnable?"
Keywords "encseq-sample"
Test do
  run_test("gt #{$cur}/gt-bequeath -h")
  grep last_stdout, 'given parent attribute to all child'
end

Name "encseq-sample: simple test"
Keywords "encseq-sample"
Test do
  run_test("gt encseq encode -indexname ./1 " + \
           "#{$testdata}/encseq-sample_in.fasta.gz")
  run_test("gt #{$cur}/gt-encseq-sample -s 4711 -n 20 1")
  #run("diff #{last_stdout} #{$testdata}/encseq-sample_out.fasta")
end

Name "encseq-sample: failure"
Keywords "encseq-sample"
Test do
  run_test("gt #{$cur}/gt-encseq-sample in.fasta", :retval => 1)
end