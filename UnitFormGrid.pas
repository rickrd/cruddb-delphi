unit UnitFormGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormGrid = class(TForm)
    DBGrid1: TDBGrid;
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
begin

  if Classe = TFuncionario then
     wSearchSQL := 'SELECT * FROM funcionario';


end;

end.
