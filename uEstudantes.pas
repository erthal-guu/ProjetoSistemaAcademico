unit uEstudantes;


interface

uses uCodigo;

//Criação da Classe de Estudantes
 Type TEstudantes = class (TCodigo)
  NomeEstudante:String;


// Getters e setters de NomeEstudante
function getNomeEstudante :String;
procedure setNomeEstudante(aNomeEstudante:String);

end;

implementation

{ TEstudantes }

function TEstudantes.getNomeEstudante: String;
  begin
    Result := Self.NomeEstudante;
  end;

procedure TEstudantes.setNomeEstudante(aNomeEstudante: String);
  begin
  Self.NomeEstudante := aNomeEstudante;
  end;

end.
