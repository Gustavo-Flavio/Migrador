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
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    EdtbdOrigem: TEdit;
    EdtbdDestino: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Memo1: TMemo;
    Sqlcliente: TFDQuery;
    conexaoold: TFDConnection;
    FDQuery2: TFDQuery;
    conexaonew: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDBatchMoveSQLReader1: TFDBatchMoveSQLReader;
    FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTransaction1: TFDTransaction;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  //conexaonew:TFDConnection;
  SQLTransaction2 : TFDTransaction;
  //sqlcliente:TFDQuery;
begin
    if conexaonew.Connected = true then
    begin
       conexaonew.Connected := false;
    end;
    if conexaoold.Connected = true then
    begin
       conexaoold.Connected := false;
    end;
 begin
   if CheckBox1.Checked = true then
 begin
   conexaonew :=TFDConnection.Create(nil);
   //SQLTransaction2:=TFDTransaction.Create(nil);
   conexaonew.Params.DriverID :='FB';
   conexaonew.Params.UserName :='sysdba';
   conexaonew.Params.Password :='masterkey';
   conexaonew.Params.Database :=EdtbdDestino.text;
   sqlcliente :=TFDQuery.Create(nil);
   sqlcliente.Connection :=conexaonew;
 with sqlcliente do


    SQL.text:='Insert into conexaonew.database.cliente(IDCLIENTE,NOMECLIENTE,TELEFONES)'  +
               ' Select IDCLIENTE, NOMECLIENTE, TELEFONE From EdtbdOrigem.cliente'  +
                'where IDCLIENTE= IDCLIENTE + 1';

   {sqlcliente.Edit;
   sqlcliente.Post;
   //sqlcliente.UpdateTransaction:=upwhereall;
   sqlcliente.ApplyUpdates;
   SQLTransaction2.Commit;
   sqlcliente.free;
   SQLTransaction2.Free;
   sqlcliente.Free; }
                Sqlcliente.ExecSQL;
                Memo1.Lines.Add(sqlcliente.Text)
end;
end;
end;



{IBQuery1.SQL.Clear;
  IBQuery1.SQL.Text:='insert into arquivo2 (Nome, valor) '+
                    'select Nome, valor '+
                    'from arquivo1 WHERE id = 3';
  IBQuery1.ExecSql;
end;}

end.
