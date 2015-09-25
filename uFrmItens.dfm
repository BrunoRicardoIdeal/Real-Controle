inherited frmItens: TfrmItens
  Caption = 'frmItens'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPesquisas: TPanel
    Height = 110
    ExplicitLeft = 0
    ExplicitTop = 35
    ExplicitHeight = 110
    object lblPsqCodigo: TLabel [1]
      Left = 39
      Top = 19
      Width = 48
      Height = 13
      Caption = 'C'#243'd. Item'
    end
    object Label1: TLabel [2]
      Left = 218
      Top = 46
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label2: TLabel [3]
      Left = 218
      Top = 19
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object edtPsqCodItem: TEdit [4]
      Left = 91
      Top = 16
      Width = 98
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtCategoria: TEdit [5]
      Left = 271
      Top = 43
      Width = 298
      Height = 21
      TabOrder = 2
    end
    object Edit1: TEdit [6]
      Left = 271
      Top = 16
      Width = 298
      Height = 21
      TabOrder = 1
    end
    inherited pnlPesquisaBotoes: TPanel
      Top = 74
      TabOrder = 3
      inherited btnLimpar: TButton
        ExplicitLeft = 719
        ExplicitTop = 1
      end
      inherited btnPesquisar: TButton
        OnClick = btnPesquisarClick
        ExplicitLeft = 644
        ExplicitTop = 1
      end
    end
  end
  inherited pnlResultados: TPanel
    Top = 145
    Height = 136
    ExplicitTop = 145
    ExplicitHeight = 136
    inherited gridResultados: TDBGrid
      Height = 134
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_ITEM'
          Title.Caption = 'C'#243'd. Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CATEGORIA'
          Title.Caption = 'C'#243'd. Cat.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCCATEGORIA'
          Title.Caption = 'Categoria'
          Visible = True
        end>
    end
  end
  inherited pnlBotoes: TPanel
    inherited btnCancelar: TButton
      ExplicitLeft = 162
      ExplicitTop = 6
    end
    object btnImprimir: TButton
      Left = 721
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = btnImprimirClick
      ExplicitLeft = 608
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  inherited pnlDados: TPanel
    Top = 281
    Height = 233
    ExplicitLeft = 0
    ExplicitTop = 276
    ExplicitHeight = 233
    object Label3: TLabel
      Left = 50
      Top = 29
      Width = 48
      Height = 13
      Caption = 'C'#243'd. Item'
      FocusControl = edtCodItem
    end
    object Label4: TLabel
      Left = 52
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = edtDescricao
    end
    object Label5: TLabel
      Left = 49
      Top = 84
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object edtCodItem: TDBEdit
      Left = 108
      Top = 26
      Width = 134
      Height = 21
      DataField = 'COD_ITEM'
      DataSource = dsMaster
      Enabled = False
      TabOrder = 0
    end
    object edtDescricao: TDBEdit
      Left = 108
      Top = 53
      Width = 327
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = dsMaster
      TabOrder = 1
    end
    object cbCategorias: TDBLookupComboBox
      Left = 108
      Top = 79
      Width = 145
      Height = 21
      DataField = 'COD_CATEGORIA'
      DataSource = dsMaster
      KeyField = 'COD_CATEGORIA'
      ListField = 'DESCRICAO'
      ListSource = dsCategorias
      TabOrder = 2
    end
  end
  inherited pnlTop: TPanel
    Color = clBtnFace
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Itens'
      ExplicitWidth = 187
    end
  end
  inherited ActBase: TActionList
    Left = 640
    Top = 169
  end
  inherited qryMaster: TFDQuery
    Active = True
    AfterOpen = qryMasterAfterOpen
    AfterClose = qryMasterAfterClose
    AfterEdit = nil
    Connection = dmPrincipal.MySqlConnection
    SQL.Strings = (
      'SELECT I.COD_ITEM'
      '      ,I.DESCRICAO'
      '      ,I.COD_CATEGORIA'
      '      ,C.DESCRICAO DESCCATEGORIA'
      'FROM ITENS I '
      '    ,CATEGORIAS C '
      'WHERE I.COD_CATEGORIA = C.COD_CATEGORIA ')
    Left = 520
    Top = 163
    object qryMasterCOD_ITEM: TFDAutoIncField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryMasterDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qryMasterCOD_CATEGORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CATEGORIA'
      Origin = 'COD_CATEGORIA'
    end
    object qryMasterDESCCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCCATEGORIA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  inherited dsMaster: TDataSource
    Left = 416
    Top = 171
  end
  inherited FDWaitCursor: TFDGUIxWaitCursor
    Left = 576
    Top = 141
  end
  object qryCategorias: TFDQuery
    Connection = dmPrincipal.MySqlConnection
    SQL.Strings = (
      'SELECT COD_CATEGORIA'
      '      ,DESCRICAO'
      'FROM CATEGORIAS')
    Left = 184
    Top = 401
    object qryCategoriasCOD_CATEGORIA: TFDAutoIncField
      FieldName = 'COD_CATEGORIA'
      Origin = 'COD_CATEGORIA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryCategoriasDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object dsCategorias: TDataSource
    DataSet = qryCategorias
    Left = 128
    Top = 400
  end
  object frxItens: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42272.570710138900000000
    ReportOptions.LastChange = 42272.570710138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 704
    Top = 433
    Datasets = <
      item
        DataSet = frxDBItens
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 79.370130000000000000
          Top = 11.338590000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cabe'#231'alho de teste')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = frxDBItens
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 9.677179999999992000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'COD_ITEM'
          DataSet = frxDBItens
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."COD_ITEM"]')
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Top = 9.677179999999992000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBItens
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
        end
      end
    end
  end
  object frxDBItens: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qryMaster
    BCDToCurrency = False
    Left = 632
    Top = 440
  end
end
