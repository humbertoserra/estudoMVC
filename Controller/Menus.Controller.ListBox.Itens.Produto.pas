unit Menus.Controller.ListBox.Itens.Produto;

interface

uses
  Menus.Controller.Interfaces,
  FMX.Types;

type
  TControllerListBoxItensProduto = class(TInterfacedObject, iControllerListBoxItemForm)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFMXObject;
  end;

implementation

{ TControllerListBoxItensProduto }

uses Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensProduto.Create;
begin

end;

destructor TControllerListBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProduto.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensProduto.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
               .Default
               .Name('btnProduto')
               .Text('Produtos')
               .Item;
end;

end.
