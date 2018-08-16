program Project1;

uses
  Vcl.Forms,
  UnitFuncionario in 'UnitFuncionario.pas',
  UnitfrFuncionario in 'UnitfrFuncionario.pas' {Form1},
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
  Application.CreateForm(TFormFuncionario, FormFuncionario);
  Application.CreateForm(TFormDatabaseController, FormDatabaseController);
  Application.CreateForm(TFormGrid, FormGrid);
  Application.Run;
end.
