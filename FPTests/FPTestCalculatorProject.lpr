program FPTestCalculatorProject;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, GUITestRunner, UTestCalculator, UCalculator;

{$R *.res}

begin
  Application.Initialize;
  RunRegisteredTests;
end.

