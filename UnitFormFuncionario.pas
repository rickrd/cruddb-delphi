unit UnitFormFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitFormPadrao, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ToolWin, UnitFormDatabaseController;

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
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
    property wDataAdmissao: string read wpDataAdmissao write wpDataAdmissao;
  end;

var
  FormFuncionario: TFormFuncionario;
  DatabaseController: TDatabaseController;

implementation

{$R *.dfm}

procedure TFormFuncionario.Button3Click(Sender: TObject);
var
  wIndex: string;
  wObj: TObject;
  wObj2: TFuncionario;
begin
  inherited;
  if inputquery('Busca por codigo', 'Insira o código do funcionario:', wIndex) then
     wObj := DatabaseController.getByCod(strtoint(wIndex), TFuncionario);
  with wObj as TFuncionario do
    Showmessage(wNome);
end;

procedure TFormFuncionario.Button4Click(Sender: TObject);
var
  wFuncionario: TFuncionario;
  wIndex: integer;
begin
  inherited;
  wFuncionario := TFuncionario.Create;
  if trystrtoint(edCod.Text, wIndex) and trystrtoint (edCodDepto.Text, wIndex) then
     begin
       with wFuncionario do
         begin
           wCod := strtoint(edCod.Text);
           wNome := edNome.Text;
           wCodDepto := strtoint(edCodDepto.Text);
           wDataAdmissao := datetostr(dtDataAdmissao.Date);
         end;
       DatabaseController.Inserir(wFuncionario, TFuncionario);
     end;
     {ShowMessage(inttostr(wFuncionario.wCod)+wFuncionario.wNome+inttostr(wFuncionario.wCodDepto)+wFuncionario.wDataAdmissao);}


end;

procedure TFormFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  DatabaseController := TDatabaseController.Create;
end;

end.
