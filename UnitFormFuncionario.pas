unit UnitFormFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitFormPadrao, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ToolWin, UnitFormDatabaseController, UnitFormGrid, System.Contnrs;

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
    procedure btInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
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

procedure TFormFuncionario.btAnteriorClick(Sender: TObject);
var
  wObj: TObject;
  wObj2: TObject;
  wIndex: integer;
begin
  inherited;
  if trystrtoint(edCod.Text, wIndex) then
     begin

       wObj := DatabaseController.getByCod(strtoint(edCod.Text), TFuncionario);
       with wObj as TFuncionario do
         try
           wObj2 := DatabaseController.getByCod(wCod-1, TFuncionario);

         finally

         end;
         {finally
           with wObj2 as TFuncionario do
             begin
               edCod.Text := inttostr(wCod);
               edNome.Text := wNome;
               edCodDepto.Text := inttostr(wCodDepto);
               dtDataAdmissao.Date := strtodate(wDataAdmissao);
             end;
         end;}

     end;

end;

procedure TFormFuncionario.btBuscarClick(Sender: TObject);
var
  FormGrid: TFormGrid;
begin
  inherited;
  FormGrid := TFormGrid.Create(FormFuncionario);
  FormGrid.geraGrid(TFuncionario);
  FormGrid.Show;
end;

procedure TFormFuncionario.btExcluirClick(Sender: TObject);
var
  wIndex: integer;
begin
  inherited;
  if trystrtoint(edCod.Text, wIndex) then
     try
       DatabaseController.deleteByCod(strtoint(edCod.Text), TFuncionario);
     finally
       edCod.Clear;
       ednome.Clear;
       edCodDepto.Clear;
     end;

end;

procedure TFormFuncionario.btInserirClick(Sender: TObject);
var
  wFuncionario: TFuncionario;
  wIndex: integer;
  wObjList: TObjectList;
  wCont: Integer;
  wObj: TObject;
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
       wObjList := DatabaseController.getAllByTableName(TFuncionario);
       for wCont := 0 to wObjList.Count-1 do
         begin
           wObj := wObjList.Items[wCont];
           with wObj as TFuncionario do
             if wCod = wFuncionario.wCod then
                // criar metodo update
                {DatabaseController.Update(wFuncionario, TFuncionario)}
             else
               DatabaseController.Inserir(wFuncionario, TFuncionario);

         end;
     end;
end;

procedure TFormFuncionario.Button6Click(Sender: TObject);
var
  FormGrid: TFormGrid;
begin
  inherited;
  FormGrid := TFormGrid.Create(FormFuncionario);
  FormGrid.Show;
  FormGrid.geraGrid(TFuncionario);
end;

procedure TFormFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  DatabaseController := TDatabaseController.Create;
end;

initialization
registerclass(TFormFuncionario);

end.
