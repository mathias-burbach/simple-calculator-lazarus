program TestCalculatorProject;

{$mode objfpc}{$H+}

uses
  Forms,
  Interfaces,
  GuiTestRunner,
  UCalculator,
  UTestCalculator;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

