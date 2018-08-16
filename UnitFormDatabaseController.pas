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

var
  FormDatabaseController: TFormDatabaseController;

implementation

{$R *.dfm}

end.
