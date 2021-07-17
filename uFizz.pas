unit uFizz;

interface

uses
  uiFizzBuzz;

type
  TFizz = class(Tinterfacedobject, IFizzBuzz)
  private
    fo: IFizzBuzz;
  public
    constructor Create(o: IFizzBuzz);
    function DoIt(i: integer): string;
  end;

implementation

{ TFizz }

constructor TFizz.Create(o: IFizzBuzz);
begin
  fo:=o;
end;

function TFizz.DoIt(i: integer): string;
begin
  result:=fo.DoIt(i);
  if i mod 3=0 then
    result:='Fizz'+result;
end;

end.
