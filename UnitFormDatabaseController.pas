unit UnitFormDatabaseController;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, System.Contnrs;

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
    procedure Update(Objeto: TObject; Classe: TClass);
    function getByCod(Cod: integer; Classe: TClass): TObject;
    function getAllBySearchSql(SearchSQL: string; Classe: TClass): TObjectList;
    function getAllByTableName (Classe: TClass): TObjectList;
    procedure deleteByCod (Cod: integer; Classe: TClass);
    constructor Create();
  end;

  TDado = class
  private

  public
    constructor Create();
    procedure setDado(Num: integer);
    function getDado(): integer;
  end;

var
  FormDatabaseController: TFormDatabaseController;
  DatabaseController: TDatabaseController;
  wClasse: TClass;
  Dado: integer;

implementation
{$R *.dfm}
uses UnitFormFuncionario;

procedure TDado.setDado(Num: Integer);
begin
  Dado := Num;
end;

function TDado.getDado(): integer;
begin
  Result := Dado;
end;

constructor TDado.Create;
begin
  Dado := -1;
end;

procedure TDatabaseController.Update(Objeto: TObject; Classe: TClass);
var
  wObj: TObject;
begin
  if Classe = TFuncionario then
     with Objeto as TFuncionario do
       begin
         try
           FormDatabaseController.IBQuery1.SQL.Text := format('UPDATE funcionario SET wNome=%s, wCodDepto=%d, wDataAdmissao=%s WHERE wCod LIKE %d', [quotedstr(wNome), wCodDepto, quotedstr(wDataAdmissao), wCod]);
           FormDatabaseController.IBQuery1.Open;
         finally
           Showmessage ('Alterado!');
           FormDatabaseController.IBQuery1.Close;
           FormDatabaseController.IBQuery1.ExecSQL;
           FormDatabaseController.IBTransaction1.CommitRetaining;
         end;
       end;
end;

procedure TDatabaseController.deleteByCod(Cod: Integer; Classe: TClass);
var
  wDeleteSQL: string;
begin
  if Classe = TFuncionario then
     try
     wDeleteSQL := format('DELETE FROM funcionario WHERE wCod LIKE %d', [Cod]);
     FormDatabaseController.IBQuery1.SQL.Text := wDeleteSQL;
     FormDatabaseController.IBQuery1.Open;
     finally
       ShowMessage('Deletado!');
       FormDatabaseController.IBQuery1.Close;
       FormDatabaseController.IBQuery1.ExecSQL;
       FormDatabaseController.IBTransaction1.CommitRetaining;
     end;
end;

constructor TDatabaseController.Create;
begin
  FormDatabaseController := TFormDatabaseController.Create(nil);
end;

function TDatabaseController.getAllBySearchSql(SearchSQL: string; Classe: TClass): TObjectList;
var
  wObjList: TObjectList;
  wCont: Integer;
  wObj: TObject;
begin
  wObjList := TObjectList.Create;
  FormDatabaseController.IBQuery1.SQL.Text := SearchSQL;
  FormDatabaseController.IBQuery1.Open;
  FormDatabaseController.IBQuery1.First;
  while not FormDatabaseController.IBQuery1.Eof do
    begin
      wObj := Classe.Create;
      with wObj as TFuncionario do
        begin
          wCod := FormDatabaseController.IBQuery1.Fields[0].AsInteger;
          wNome := FormDatabaseController.IBQuery1.Fields[1].AsString;
          wCodDepto := FormDatabaseController.IBQuery1.Fields[2].AsInteger;
          wDataAdmissao := FormDatabaseController.IBQuery1.Fields[3].AsString;
        end;
      wObjList.Add(wObj);
      FormDatabaseController.IBQuery1.Next;
    end;
  Result := wObjList;
  FormDatabaseController.IBQuery1.Close;
end;

function TDatabaseController.getAllByTableName(Classe: TClass): TObjectList;
var
  wObjList: TObjectList;
  wCont: Integer;
  wObj: TObject;
  wSearchSQL: string;
begin
  wObjList := TObjectList.Create;
  // condição por classe
  if Classe = TFuncionario then
     begin
       wSearchSQL := 'SELECT * FROM funcionario ORDER BY wCod';
       FormDatabaseController.IBQuery1.SQL.Text := wSearchSQL;
       FormDatabaseController.IBQuery1.Open;
       FormDatabaseController.IBQuery1.First;
       while not FormDatabaseController.IBQuery1.Eof do
         begin
           wObj := Classe.Create;
           with wObj as TFuncionario do
             begin
               wCod := FormDatabaseController.IBQuery1.Fields[0].AsInteger;
               wNome := FormDatabaseController.IBQuery1.Fields[1].AsString;
               wCodDepto := FormDatabaseController.IBQuery1.Fields[2].AsInteger;
               wDataAdmissao := FormDatabaseController.IBQuery1.Fields[3].AsString;
             end;
           wObjList.Add(wObj);
           FormDatabaseController.IBQuery1.Next;
         end;
     end;
  Result := wObjList;
  FormDatabaseController.IBQuery1.Close;
end;

function TDatabaseController.getByCod(Cod: Integer; Classe: TClass): TObject;
var
  wObj: TObject;
  wSearchSQL: string;
  begin
  wObj := Classe.Create;
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
    if Classe = TFuncionario then
       with Objeto as TFuncionario do
         wInsertSQL := format('INSERT INTO funcionario VALUES (%d, %s, %d, %s)',[wCod, quotedstr(wNome), wCodDepto, quotedstr(wDataAdmissao)]);
    try
    FormDatabaseController.IBQuery1.SQL.Text := wInsertSQL;
    FormDatabaseController.IBQuery1.Open;
    FormDatabaseController.IBQuery1.Close;
    FormDatabaseController.IBTransaction1.CommitRetaining;
    finally
      ShowMessage('Adicionado!');
    end;
  end;

end.
