unit UnitFormGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, UnitFormDatabaseController, System.Contnrs;

type
  TFormGrid = class(TForm)
    StringGrid1: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure geraGrid(Classe: TClass);
  end;

var
  FormGrid: TFormGrid;

implementation
{$R *.dfm}

uses UnitFormFuncionario;

procedure TFormGrid.geraGrid(Classe: TClass);
var
  wSearchSQL: string;
  DatabaseController: TDatabaseController;
  wObjList: TObjectList;
  wCont: Integer;
  wObj: TObject;
begin

  if Classe = TFuncionario then
     wSearchSQL := 'SELECT * FROM funcionario ORDER BY wCod';
     wObjList := DatabaseController.getAllBySearchSql(wSearchSQL, TFuncionario);
     for wCont := 0 to wObjList.Count-1 do
       wObj := wObjList.Items[wCont];
       with wObj as TFuncionario do
         begin
           StringGrid1.Cells[0, wCont] := inttostr(wCod);
           StringGrid1.Cells[1, wCont] := wNome;
           StringGrid1.Cells[2, wCont] := inttostr(wCodDepto);
           StringGrid1.Cells[3, wCont] := wDataAdmissao;
         end;





end;

end.
