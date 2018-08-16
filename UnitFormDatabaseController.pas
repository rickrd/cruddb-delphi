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
    IBQuery1wCod: TIntegerField;
    IBQuery1wNome: TWideStringField;
    IBQuery1wCodDepto: TIntegerField;
    IBQuery1wDataAdmissao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TDatabaseController = class
  private

  public
    procedure Inserir(Objeto: TObject; Classe: TClass);
    function getByCod(Cod: integer; Classe: TClass): TObject;
  end;

var
  FormDatabaseController: TFormDatabaseController;
  DatabaseController: TDatabaseController;
  wClasse: TClass;

implementation
{$R *.dfm}
uses UnitFormFuncionario;

function TDatabaseController.getByCod(Cod: Integer; Classe: TClass): TObject;
var
  wObj: TObject;
  wSearchSQL: string;
  begin
  wClasse := Classe;
  wObj := wClasse.Create;
  //uma condição para cada classe de formulário com acesso á função
  if wClasse = TFuncionario then
     begin
       wSearchSQL := format('SELECT * FROM funcionario WHERE wCod LIKE %d', [Cod]);
       try
         FormDatabaseController.IBQuery1.SQL.Text := wSearchSQL;
         FormDatabaseController.IBQuery1.Open;
         FormDatabaseController.IBTransaction1.CommitRetaining;
       finally
         with wObj as TFuncionario do
           begin
             wCod := FormDatabaseController.IBQuery1.Fields[0].AsInteger;
             wNome := FormDatabaseController.IBQuery1.Fields[1].AsString;
             wCodDepto := FormDatabaseController.IBQuery1.Fields[2].AsInteger;
             wDataAdmissao := FormDatabaseController.IBQuery1.Fields[3].AsString;
           end;
         Result := wObj;
         FormDatabaseController.IBQuery1.Close;
       end;

     end;
  end;

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
      ShowMessage('Success');
    end;

  end;

end.
