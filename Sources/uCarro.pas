unit uCarro;

interface

type
  TCarro = class

  private
    FMarca: String;
    FModelo: String;
    FCor: String;
    FAnoFabricacao: String;
    procedure setMarca(value: String);
    procedure setModelo(value: String);
    procedure setCor(value: String);
    procedure setAnoFabricacao(value: String);
    function getMarca: String;
    function getModelo: String;
    function getCor: String;
    function getAnoFabricacao: String;

  public
    property Marca: String read getMarca write setMarca;
    property Modelo: String read getModelo write setModelo;
    property Cor: String read getCor write setCor;
    property AnoFabricacao: String read getAnoFabricacao write setAnoFabricacao;
  end;

implementation

{ TCarro }

function TCarro.getAnoFabricacao: String;
begin
  Result := FAnoFabricacao;
end;

function TCarro.getCor: String;
begin
  Result := FCor;
end;

function TCarro.getMarca: String;
begin
  Result := FMarca;
end;

function TCarro.getModelo: String;
begin
  Result := FModelo;
end;

procedure TCarro.setAnoFabricacao(value: String);
begin
  FAnoFabricacao := value;
end;

procedure TCarro.setCor(value: String);
begin
  FCor := value;
end;

procedure TCarro.setMarca(value: String);
begin
  FMarca := value;
end;

procedure TCarro.setModelo(value: String);
begin
  FModelo := value;
end;

end.