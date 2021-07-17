unit FizzBuzzer;

interface

type
  TFizzBuzzer = class
  public
    class function DoIt(i: integer): string;
  end;

implementation

uses
  uZahl,
  uBuzz,
  uFizz;

{ TFizzBuzzer }

class function TFizzBuzzer.DoIt(i: integer): string;
begin
  result:=TZahl.Create(TFizz.Create(TBuzz.Create())).DoIt(i);
end;

end.
