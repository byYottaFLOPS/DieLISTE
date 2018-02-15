program DieLISTE;

uses
  System.StartUpCopy,
  FMX.Forms,
  Supermarkt in 'Supermarkt.pas' {Form2},
  Login in 'Login.pas' {LoginForm},
  UMain in 'UMain.pas' {Form6},
  PWaendern in 'PWaendern.pas' {Form7},
  Liste in 'Liste.pas' {Form8},
  Hinzufuegen in 'Hinzufuegen.pas' {Form9},
  PWvergessen in 'PWvergessen.pas' {Form10},
  ServerAPI in 'ServerAPI.pas',
  ListeBearbeiten in 'ListeBearbeiten.pas' {FormListeBearbeiten},
  AddUser in 'AddUser.pas' {Form1},
  ItemBearbeiten in 'ItemBearbeiten.pas';

{$R *.res}

begin
Application.Initialize;
  Application.CreateForm(TFormLogin, LoginForm);
  Application.CreateForm(TFormListeBearbeiten, FormListeBearbeiten);
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
