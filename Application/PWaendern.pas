unit PWaendern;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TFormPWaendern = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    EdtPWalt: TEdit;
    EdtPWneu1: TEdit;
    EdtPWneu2: TEdit;
    BtnPWaendern: TButton;
    LblPWaendern: TLabel;
    Panel1: TPanel;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FormPWaendern: TFormPWaendern;

implementation

{$R *.fmx}

end.
