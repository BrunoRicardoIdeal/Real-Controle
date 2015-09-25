unit uFrmItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCad, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, frxClass, frxDBSet;

type
  TfrmItens = class(TFrmMasterCad)
    lblPsqCodigo: TLabel;
    edtPsqCodItem: TEdit;
    edtCategoria: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    qryMasterCOD_ITEM: TFDAutoIncField;
    qryMasterDESCRICAO: TStringField;
    qryMasterCOD_CATEGORIA: TIntegerField;
    Label3: TLabel;
    edtCodItem: TDBEdit;
    Label4: TLabel;
    edtDescricao: TDBEdit;
    Label5: TLabel;
    cbCategorias: TDBLookupComboBox;
    qryCategorias: TFDQuery;
    dsCategorias: TDataSource;
    qryCategoriasCOD_CATEGORIA: TFDAutoIncField;
    qryCategoriasDESCRICAO: TStringField;
    qryMasterDESCCATEGORIA: TStringField;
    btnImprimir: TButton;
    frxItens: TfrxReport;
    frxDBItens: TfrxDBDataset;
    procedure actNovoExecute(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryMasterAfterOpen(DataSet: TDataSet);
    procedure qryMasterAfterClose(DataSet: TDataSet);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItens: TfrmItens;

implementation

 uses
  uDmPrincipal;
{$R *.dfm}

procedure TfrmItens.actCancelarExecute(Sender: TObject);
begin
  inherited;
  qryMaster.Cancel;
end;

procedure TfrmItens.actExcluirExecute(Sender: TObject);
begin
  inherited;
  if (qryMaster.Active) and (not qryMaster.IsEmpty) then
  begin
   if Application.MessageBox('Deseja excluir o registro selecionado?', 'Atenção', MB_YESNO) = mrYes then
   begin
    qryMaster.Delete;
   end;
  end;
end;

procedure TfrmItens.actGravarExecute(Sender: TObject);
begin
  inherited;
  if qryMaster.Active then
  begin
     qryMaster.Post;
  end;
  qryMaster.Refresh;
end;

procedure TfrmItens.actNovoExecute(Sender: TObject);
begin
  inherited;
  if not qryMaster.Active then
  begin
    qryMaster.Open();
  end;
  qryMaster.Append;
end;

procedure TfrmItens.btnImprimirClick(Sender: TObject);
begin
  inherited;
  frxItens.Print;
end;

procedure TfrmItens.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  qryMaster.Open();
end;

procedure TfrmItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Action := caFree;
 frmItens := nil;
end;

procedure TfrmItens.qryMasterAfterClose(DataSet: TDataSet);
begin
  inherited;
 qryCategorias.Close;
end;

procedure TfrmItens.qryMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
 qryCategorias.Open();
end;

end.
