program hello;
uses crt;
var a, b, c, s, i, n, res: Integer;
const PI = 3.14;
begin
  (*https://wiki.freepascal.org/*)
  writeln('Hello There...');
  readln(a, b, c);
  s := a + b + c;
  res := 0;
  n := 5;
  writeln(a div b);
  writeln(s + PI);
  for i  := 1 to n do
    begin
    res := res + 5;
  writeln(res);
  end
end.
