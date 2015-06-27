Name "encseq-sample: runnable?"
Keywords "encseq-sample"
Test do
  run_test("gt #{$cur}/gt-bequeath -h")
  grep last_stdout, 'given parent attribute to all child'
end

Name "encseq-sample: simple test"
Keywords "encseq-sample"
Test do
  run_test("gt encseq encode -indexname encseq-sample_in.fasta.gz " + \
           "#{$testdata}/encseq-sample_in.fasta.gz")
  run_test("gt #{$cur}/gt-encseq-sample -s 4711 -n 20 " + \
           "encseq-sample_in.fasta.gz")
  run("diff #{last_stdout} #{$testdata}/encseq-sample_out.fasta")
end

Name "encseq-sample: failure"
Keywords "encseq-sample"
Test do
  run_test("gt #{$cur}/gt-encseq-sample in.fasta", :retval => 1)
end