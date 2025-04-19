unit FMain;

{$mode objfpc}{$H+}

interface

uses
  Classes,
  Forms,
  Controls,
  StdCtrls,
  UCalculator;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnNumber: TButton;
    btnNumber1: TButton;
    btnNumber10: TButton;
    btnOperation: TButton;
    btnNumber2: TButton;
    btnNumber3: TButton;
    btnNumber4: TButton;
    btnNumber5: TButton;
    btnNumber6: TButton;
    btnNumber7: TButton;
    btnNumber8: TButton;
    btnNumber9: TButton;
    btnOperationSubtract: TButton;
    btnOperationSubtract1: TButton;
    btnOperationSubtract2: TButton;
    btnOperationSubtract3: TButton;
    btnOperationSubtract4: TButton;
    btnOperationSubtract5: TButton;
    btnOperationSubtract6: TButton;
    btnOperationSubtract7: TButton;
    edtDisplay: TEdit;
    procedure btnNumberClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private declarations }
    FCalculator: TCalculator;
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.btnNumberClick(Sender: TObject);
begin
  FCalculator.SendInput( TButton(Sender).Caption );
  edtDisplay.Text := FCalculator.GetDisplay;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FCalculator:=TCalculator.Create;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FCalculator.Free;
end;

end.

