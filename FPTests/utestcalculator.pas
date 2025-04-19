unit UTestCalculator;

{$mode objfpc}{$H+}

interface

uses
  TestFramework,
  UCalculator;

type

  { TTestCalculator }

  TTestCalculator= class(TTestCase)
  private
    FCalculator: TCalculator;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestAdd;
    procedure TestSubstract;
    procedure TestMultiply;
    procedure TestDivide;
    procedure TestPercent;
  end;

implementation

uses
  Classes,
  SysUtils;


procedure TTestCalculator.TestAdd;
const
  cFour = '4';
  cPlus = '+';
  cTwo = '2';
  cEquals = '=';
  cResult = '6';
begin
  FCalculator.SendInput(cFour);
  FCalculator.SendInput(cPlus);
  FCalculator.SendInput(cTwo);
  FCalculator.SendInput(cEquals);
  CheckEquals(cResult, FCalculator.GetDisplay, 'Addition');
end;

procedure TTestCalculator.TestSubstract;
const
  cFour = '4';
  cMinus = '-';
  cTwo = '2';
  cEquals = '=';
  cResult = '2';
begin
  FCalculator.SendInput(cFour);
  FCalculator.SendInput(cMinus);
  FCalculator.SendInput(cTwo);
  FCalculator.SendInput(cEquals);
  CheckEquals(cResult, FCalculator.GetDisplay, 'Substract');
end;

procedure TTestCalculator.TestMultiply;
const
  cFour = '4';
  cMultiply = '*';
  cTwo = '2';
  cEquals = '=';
  cResult = '8';
begin
  FCalculator.SendInput(cFour);
  FCalculator.SendInput(cMultiply);
  FCalculator.SendInput(cTwo);
  FCalculator.SendInput(cEquals);
  CheckEquals(cResult, FCalculator.GetDisplay, 'Multiply');
end;

procedure TTestCalculator.TestDivide;
const
  cFour = '4';
  cDivide = '/';
  cTwo = '2';
  cEquals = '=';
  cResult = '2';
begin
  FCalculator.SendInput(cFour);
  FCalculator.SendInput(cDivide);
  FCalculator.SendInput(cTwo);
  FCalculator.SendInput(cEquals);
  CheckEquals(cResult, FCalculator.GetDisplay, 'Divide');
end;

procedure TTestCalculator.TestPercent;
const
  cFiftyFive = '55';
  cMultiply = '*';
  cTen = '10';
  cPercent = '%';
  cResult = '5.5';
begin
  FCalculator.SendInput(cFiftyFive);
  FCalculator.SendInput(cMultiply);
  FCalculator.SendInput(cTen);
  FCalculator.SendInput(cPercent);
  CheckEquals(cResult, FCalculator.GetDisplay, 'Percent');
end;

procedure TTestCalculator.SetUp;
begin
  FCalculator := TCalculator.Create;
end;

procedure TTestCalculator.TearDown;
begin
  FCalculator.Free;
end;

initialization
  RegisterTest(TTestCalculator.Suite);
end.

