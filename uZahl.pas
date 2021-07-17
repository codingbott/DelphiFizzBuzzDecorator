unit uZahl;

interface

uses
  uiFizzBuzz;

type
  TZahl = class(TInterfacedObject, IFizzBuzz)
  private
    fo: IFizzBuzz;
  public
    constructor Create(o: IFizzBuzz);
    function DoIt(i: integer): String;
  end;

implementation

uses
  SysUtils;

{ TZahl }

constructor TZahl.Create(o: IFizzBuzz);
begin
  fo:=o;
end;

function TZahl.DoIt(i: integer): String;
begin
  result:=fo.DoIt(i);
  if result='' then
    result:=inttostr(i);
end;

end.
