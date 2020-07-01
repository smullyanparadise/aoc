program Day1;
var
  inputFile : File of Char;
  floorDirection : Char;
  ithDirection : Integer = 0;
  floorCount : Integer = 0;
  enteredAt : Integer = 0;
begin
  assign(inputFile, '2015/inputs/day1.txt');
  reset(inputFile);
  while not EOF(inputFile) do begin
    read(inputFile, floorDirection);
    case floorDirection of
      '(' : inc(floorCount);
      ')' : dec(floorCount);
    end;
    inc(ithDirection);
    if (enteredAt = 0) and (floorCount = -1) then enteredAt := ithDirection;
  end;
  close(inputFile);

  writeln('Part 1: to floor no. ', floorCount);
  writeln('Part 2: position no. ', enteredAt);
end.
