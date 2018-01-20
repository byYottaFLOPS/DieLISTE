unit PWaendern;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, ServerAPI;

type
  TForm7 = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    EdtPWalt: TEdit;
    EdtPWneu1: TEdit;
    EdtPWneu2: TEdit;
    BtnPWaendern: TButton;
    LblPWaendern: TLabel;
    Panel1: TPanel;
    BtnCancel: TButton;
    procedure BtnPWaendernClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    public constructor Create(AOwner: TComponent; var serverAPI: TServerAPI);
  private
  public
    { Public-Deklarationen }
  end;

var
  Form7: TForm7;
  privateServerAPI: TServerAPI;

implementation

{$R *.fmx}

constructor TForm7.Create(AOwner: TComponent; var serverAPI: TServerAPI);
begin
  inherited Create(AOwner);
  privateServerAPI := serverAPI;
end;

procedure TForm7.BtnCancelClick(Sender: TObject);
begin
  Release;
end;

procedure TForm7.BtnPWaendernClick(Sender: TObject);
begin
if EdtPWneu1.text=EdtPWneu2.text then
  begin
  if privateServerAPI.changePassword(EdtPWneu1.Text)='"Changed Password"' then
    begin
      ShowMessage('Ihr Passwort wurde ver�ndert.');
      Release;
    end;
  end;
end;

end.
