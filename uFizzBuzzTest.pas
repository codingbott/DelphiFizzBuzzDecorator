unit uFizzBuzzTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TFizzBuzzTest = class
  public
    [Test]
    [TestCase('TestA', '1,1')]
    [TestCase('TestB', '2,2')]
    [TestCase('TestC', '3,Fizz')]
    [TestCase('TestD', '4,4')]
    [TestCase('TestE', '5,Buzz')]
    [TestCase('TestF', '6,Fizz')]
    [TestCase('TestG', '7,7')]
    [TestCase('TestH', '8,8')]
    [TestCase('TestI', '9,Fizz')]
    [TestCase('TestJ', '10,Buzz')]
    [TestCase('TestK', '11,11')]
    [TestCase('TestL', '12,Fizz')]
    [TestCase('TestM', '13,13')]
    [TestCase('TestN', '14,14')]
    [TestCase('TestO', '15,FizzBuzz')]
    [TestCase('TestP', '16,16')]
    procedure Test(const i: integer; const soll: String);
  end;

implementation

uses
  FizzBuzzer;

procedure TFizzBuzzTest.Test(const i: integer; const soll: String);
var
  ergebnis: string;
begin
  ergebnis:=TFizzBuzzer.DoIt(i);
  Assert.AreEqual(ergebnis, soll);
end;

initialization

TDUnitX.RegisterTestFixture(TFizzBuzzTest);

end.
