unit uMatriculas;

interface

// Criação da Classe de Matriculas
type
  TMatricula = class

    CodigoTurma: Integer;
    CodigoDisciplina: Integer;
    Codigo: Integer;

    // Getters e setters de CódigoTurma
    function getCodigoTurma: Integer;
    procedure setCodigoTurma(aCodigoTurma: Integer);

    // Getters e setters de CódigoDisciplina
    function getCodigoDisciplina: Integer;
    procedure setCodigoDisciplina(aCodigoDisciplina: Integer);

    // Getters e setters de Codigo
    function getCodigo: Integer;
    procedure setCodigo(aCodigo: Integer);

  end;

implementation

{ TMatricula }

function TMatricula.getCodigo: Integer;
begin
  Result := Self.Codigo;
end;

function TMatricula.getCodigoDisciplina: Integer;
begin
  Result := Self.CodigoDisciplina
end;

function TMatricula.getCodigoTurma: Integer;
begin
  Result := Self.CodigoTurma
end;

procedure TMatricula.setCodigo(aCodigo: Integer);
begin
  Self.Codigo := aCodigo;
end;

procedure TMatricula.setCodigoDisciplina(aCodigoDisciplina: Integer);
begin
  Self.CodigoDisciplina := aCodigoDisciplina
end;

procedure TMatricula.setCodigoTurma(aCodigoTurma: Integer);
begin
  Self.CodigoTurma := aCodigoTurma
end;

end.
