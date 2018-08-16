unit UnitFuncionario;

interface

uses Classes;

type
TFuncionario = class
private
  wpCod: integer;
  wpNome: string;
  wpDeptoCod: integer;
  wpDataAdmissao: string;
public
  property wCod: integer read wpCod write wpCod;
  property wNome: string read wpNome write wpNome;
  property wDeptoCod: integer read wpDeptoCod write wpDeptoCod;
  property wDataAdmissao: string read wpDataAdmissao write wpDataAdmissao;
end;

implementation

end.
