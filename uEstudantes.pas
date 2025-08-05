unit uEstudantes;

interface

// Criação da Classe de Estudantes
Type
  TEstudantes = class
    NomeEstudante: String;
    Codigo: Integer;
    CPF: String;

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

implementation

{ TEstudantes }

function TEstudantes.getCodigo: Integer;
begin
  Result := Self.Codigo;
end;

function TEstudantes.getCPF: String;
begin
  Result := Self.CPF;
end;

function TEstudantes.getNomeEstudante: String;
begin
  Result := Self.NomeEstudante;
end;

procedure TEstudantes.setCodigo(aCodigo: Integer);
begin
  Self.Codigo := aCodigo;
end;

procedure TEstudantes.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

procedure TEstudantes.setNomeEstudante(aNomeEstudante: String);
begin
  Self.NomeEstudante := aNomeEstudante;
end;

end.
