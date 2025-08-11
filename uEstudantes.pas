unit uEstudantes;

interface
uses System.Generics.Collections;

// Criação da Classe de Estudantes
Type
  TEstudante = class
  private
    NomeEstudante: String;
    Codigo: Integer;
    CPF: String;
  public
    // Getters e setters de NomeEstudante
    function getNomeEstudante: String;
    procedure setNomeEstudante(aNomeEstudante: String);
    // Getters e setters de Codigo
    function getCodigo: Integer;
    procedure setCodigo(aCodigo: Integer);
    // Getters e setters do CPF
    Function getCPF: String;
    procedure setCPF(aCPF: String);

end;
var ListaEstudantes : TObjectList<TEstudante>;
implementation

{ TEstudantes }

function TEstudante.getCodigo: Integer;
begin
  Result := Self.Codigo;
end;

function TEstudante.getCPF: String;
begin
  Result := Self.CPF;
end;

function TEstudante.getNomeEstudante: String;
begin
  Result := Self.NomeEstudante;
end;

procedure TEstudante.setCodigo(aCodigo: Integer);
begin
  Self.Codigo := aCodigo;
end;

procedure TEstudante.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

procedure TEstudante.setNomeEstudante(aNomeEstudante: String);
begin
  Self.NomeEstudante := aNomeEstudante;
end;

initialization
ListaEstudantes := TObjectList<TEstudante>.Create;

end.
