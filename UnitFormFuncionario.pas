unit UnitFormFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitFormPadrao, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ToolWin;

type
  TFormFuncionario = class(TFormPadrao)
    edCod: TEdit;
    edNome: TEdit;
    edCodDepto: TEdit;
    dtDataAdmissao: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TFuncionario = class

  private
    wpCod: integer;
    wpNome: string;
    wpCodDepto: integer;
    wpDataAdmissao: string;
  public
    property wCod: integer read wpCod write wpCod;
    property wNome: string read wpNome write wpNome;
    property wCodDepto: integer read wpCodDepto write wpCodDepto;
    property wDataAdmissao: string read wpDataAdmissao write wpDataAmissao;
  end;

var
  FormFuncionario: TFormFuncionario;

implementation

{$R *.dfm}

end.
