unit UnitFormDatabaseController;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TFormDatabaseController = class(TForm)
    IBQuery1: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TDatabaseController = class
  private
    strict private wClasse: TClass;
  public
    procedure Inserir(Objeto: TObject; Classe: TClass);
  end;

var
  FormDatabaseController: TFormDatabaseController;
  DatabaseController: TDatabaseController;

implementation
{$R *.dfm}
uses UnitFormFuncionario;

procedure TDatabaseController.Inserir(Objeto: TObject; Classe: TClass);
var
  wInsertSQL: string;
  begin
    wClasse := Classe;
    with Objeto as TFuncionario do
        wInsertSQL := format('INSERT INTO funcionario VALUES (%d, %s, %d, %s)',[wCod, quotedstr(wNome), wCodDepto, quotedstr(wDataAdmissao)]);
    try
    FormDatabaseController.IBQuery1.SQL.Text := wInsertSQL;
    FormDatabaseController.IBQuery1.Open;
    FormDatabaseController.IBQuery1.Close;
    FormDatabaseController.IBTransaction1.CommitRetaining;
    finally
      ShowMessage('SuCeSs');
    end;

  end;

end.
