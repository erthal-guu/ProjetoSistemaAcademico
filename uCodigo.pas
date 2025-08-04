unit uCodigo;

interface

type
  TCodigo = class
  private
    Codigo: Integer;
    // Getters e setters do Código
  public
    function getCodigo: Integer;
    procedure setCodigo(aCodigo: Integer);
    // Criação do Construtor da Classe
    constructor Create(aCodigo: Integer; aNome, aCPF: String);
  end;

implementation

{ TPessoas }

constructor TCodigo.Create(aCodigo: Integer; aNome, aCPF: String);
begin
  Self.Codigo := aCodigo;
end;

function TCodigo.getCodigo: Integer;
begin
  Result := Self.Codigo;
end;

procedure TCodigo.setCodigo(aCodigo: Integer);
begin
  Self.Codigo := aCodigo;
end;

end.
