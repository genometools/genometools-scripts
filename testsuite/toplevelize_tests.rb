Name "toplevelize: runnable?"
Keywords "toplevelize"
Test do
  run_test("gt #{$cur}/gt-toplevelize -h")
end

Name "toplevelize: Dmel4 input file"
Keywords "toplevelize"
Test do
  run ("cp #{$testdata}/4_genomic_dmel_RELEASE3-1.FASTA.gz ./1.fas.gz")
  run_test("gt #{$cur}/gt-toplevelize 1.fas.gz < #{$testdata}/ltrclean_in.gff3")
  run("diff #{last_stdout} #{$testdata}/toplevelize_out.gff3")
  run("diff toplevelized_LTR_retrotransposon.fasta #{$testdata}/toplevelize_out.fasta")
end

Name "toplevelize: ignored content"
Keywords "toplevelize"
Test do
  run ("cp #{$testdata}/4_genomic_dmel_RELEASE3-1.FASTA.gz ./1.fas.gz")
  run_test("gt #{$cur}/gt-toplevelize -t foo 1.fas.gz < #{$testdata}/ltrclean_in.gff3")
  run("diff #{last_stdout} #{$testdata}/toplevelize_out2.gff3")
  run("diff toplevelized_foo.fasta #{$testdata}/toplevelize_out2.fasta")
end