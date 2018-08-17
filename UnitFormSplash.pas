unit UnitFormSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormSplash = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar: TMenuItem;
    TFormFuncionario: TMenuItem;
    procedure mmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

procedure TFormSplash.mmClick(Sender: TObject);
var
  wForm: TForm;
  wFormName: TFormClass;
begin
  with Sender as TMenuItem do
    wFormName := TFormClass(FindClass(name));
    wForm := wFormName.Create(FormSplash);
    wForm.Show;
end;

end.
