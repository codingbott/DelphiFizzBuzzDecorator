program FizzBuzz;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FizzBuzzer in 'FizzBuzzer.pas',
  uZahl in 'uZahl.pas',
  uiFizzBuzz in 'uiFizzBuzz.pas',
  uBuzz in 'uBuzz.pas',
  uFizz in 'uFizz.pas';

var
  i: integer;
begin
  try
    for i:=1 to 100 do
      writeln(TFizzBuzzer.DoIt(i));
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
