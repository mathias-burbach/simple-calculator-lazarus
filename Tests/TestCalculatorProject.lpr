program TestCalculatorProject;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, GuiTestRunner, utestcalculator, calculatorunit;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

