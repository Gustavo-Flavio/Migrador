unit Udatamodulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove.SQL, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.DataSet;

type
  Tdm = class(TDataModule)
    Sqlcliente: TFDQuery;
    conexaoold: TFDConnection;
    FDQuery2: TFDQuery;
    conexaonew: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    SqlclienteCODIGO: TIntegerField;
    SqlclienteNOMECLIENTE: TStringField;
    SqlclienteENDERECO: TStringField;
    SqlclienteBAIRRO: TStringField;
    SqlclienteNUMERO: TStringField;
    SqlclienteCIDADE: TStringField;
    SqlclienteUF: TStringField;
    SqlclienteCEP: TStringField;
    SqlclienteTELEFONE: TStringField;
    SqlclienteDOCTOCLIENTE: TStringField;
    SqlclienteTIPODOCTO: TStringField;
    SqlclienteIDENTIDADE: TStringField;
    SqlclienteDATANASC: TSQLTimeStampField;
    SqlclienteSTATUS: TStringField;
    FDBatchMoveSQLReader1: TFDBatchMoveSQLReader;
    FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
