unit uConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1codigo: TIntegerField;
    FDTable1marca: TWideStringField;
    FDTable1modelo: TWideStringField;
    FDTable1cor: TWideStringField;
    FDTable1anofabricacao: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
