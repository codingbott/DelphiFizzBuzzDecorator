unit uZahlTest;

interface

uses
  uiFizzBuzz,
  DUnitX.TestFramework;

type
  [TestFixture]
  TZahlTest = class
  public
    [Test]
    procedure Test1;
  end;

implementation

uses
  uDummy,
  uZahl;

procedure TZahlTest.Test1;
begin
  Assert.AreEqual(TZahl.Create(TLeerStub.Create()).DoIt(1), '1');
end;

{ TDummy }

initialization

TDUnitX.RegisterTestFixture(TZahlTest);

end.
