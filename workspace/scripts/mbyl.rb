def test(&myblock)
  yield 1
  yield 2
  #yield 3
  myblock.call 3
end
test do
|number| puts number * 10
end
procs = Proc.new do
  |x| puts x
end
procs.call 
%x`echo hello`
p $?.success?
