unit eNota.Controller.Invoker;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces, System.Classes, 
  System.Generics.Collections;
Type
  TControllerInvoker = class(TInterfacedObject, iInvoker)
    private
      FLista: TList<iCommand>;
    public
      constructor Create;
      destructor Destroy; override;
      function Add(Value: iCommand): iInvoker;
      class function New: iInvoker;
  end;
implementation

uses
  System.SysUtils;

{ TControllerInvoker }

function TControllerInvoker.Add(Value: iCommand): iInvoker;
begin
   Result := Self;
   FLista.Add(Value);
end;               

constructor TControllerInvoker.Create;
begin
   FLista := TList<iCommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

class function TControllerInvoker.New: iInvoker;
begin

end;

end.
