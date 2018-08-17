program Project1;

uses
  Vcl.Forms,
  UnitFormPadrao in 'UnitFormPadrao.pas' {FormPadrao},
  UnitFormFuncionario in 'UnitFormFuncionario.pas' {FormFuncionario},
  UnitFormSplash in 'UnitFormSplash.pas' {FormSplash},
  UnitFormDatabaseController in 'UnitFormDatabaseController.pas' {FormDatabaseController},
  UnitFormGrid in 'UnitFormGrid.pas' {FormGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.Run;
end.
