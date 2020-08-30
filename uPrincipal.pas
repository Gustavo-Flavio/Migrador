unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.UI,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    EdtbdOrigem: TEdit;
    EdtbdDestino: TEdit;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    Panel1: TPanel;
    FDQuery2: TFDQuery;
    FDConnection2: TFDConnection;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    BtnCopiar: TButton;
    FDQuery1IDCLIENTE: TIntegerField;
    FDQuery1DOCTOCLIENTE: TStringField;
    FDQuery1NOMECLIENTE: TStringField;
    FDQuery1TELEFONES: TStringField;
    FDQuery2IDCLIENTE: TIntegerField;
    FDQuery2DOCTOCLIENTE: TStringField;
    FDQuery2NOMECLIENTE: TStringField;
    FDQuery2TELEFONES: TStringField;
    Memo1: TMemo;
    procedure BtnCopiarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnCopiarClick(Sender: TObject);
begin
 while(not  FDQuery1.eof) do
 begin
   FDQuery2.Close;
   FDQuery2.SQL.Text:='INSERT INTO CLIENTE(IDCLIENTE,DOCTOCLIENTE,NOMECLIENTE,TELEFONES )' +
                      'VALUES('+IntToStr(FDQuery1IDCLIENTE.AsInteger)+','
                      +QuotedStr(FDQuery1DOCTOCLIENTE.AsString)+','
                      +QuotedStr(FDQuery1NOMECLIENTE.AsString)+','
                      +QuotedStr(FDQuery1TELEFONES.AsString)+')';
//                      +'WHERE NOT EXISTS( SELECT FIRST 1 FROM CLIENTES WHERE  DOCTOCLIENTE=DOCTOCLIENTE ))' ;


   FDQuery2.ExecSQL;
   FDQuery1.Next;
   //Memo1.Lines.Text:=FDQuery2.SQL.Text;

 end;

end;


end.
