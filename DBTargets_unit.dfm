object Form_DBTargets: TForm_DBTargets
  Left = 0
  Top = 0
  Width = 1200
  Height = 2175
  VertScrollBar.ButtonSize = 20
  VertScrollBar.Color = clGradientActiveCaption
  VertScrollBar.ParentColor = False
  VertScrollBar.Position = 8
  VertScrollBar.Range = 2135
  VertScrollBar.Size = 5
  VertScrollBar.ThumbSize = 5
  VertScrollBar.Tracking = True
  BorderStyle = bsNone
  BorderWidth = 25
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape_BorderLeft: TShape
    AlignWithMargins = True
    Left = 0
    Top = -8
    Width = 1
    Height = 2134
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alLeft
    Pen.Color = clBtnShadow
    ExplicitTop = 0
    ExplicitHeight = 1554
  end
  object Shape_BorderBottom: TShape
    AlignWithMargins = True
    Left = 0
    Top = 2126
    Width = 1133
    Height = 1
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Pen.Color = clBtnShadow
    ExplicitLeft = -73
    ExplicitTop = 335
    ExplicitWidth = 895
  end
  object Shape_BorderRight: TShape
    AlignWithMargins = True
    Left = 1132
    Top = -8
    Width = 1
    Height = 2134
    Margins.Left = 1
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alRight
    Pen.Color = clBtnShadow
    ExplicitLeft = 821
    ExplicitTop = -36
    ExplicitHeight = 372
  end
  object Panel_DBTargets: TPanel
    AlignWithMargins = True
    Left = 5
    Top = -8
    Width = 2307
    Height = 449
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alCustom
    BevelOuter = bvNone
    Color = clHighlight
    TabOrder = 0
    object Shape_BorderTop: TShape
      AlignWithMargins = True
      Left = 3
      Top = 26
      Width = 2302
      Height = 1
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Pen.Color = clWindow
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 814
    end
    object Panel_DBTargetsFunctions: TPanel
      Left = 0
      Top = 0
      Width = 2307
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        2307
        26)
      object Shape_Split5: TShape
        AlignWithMargins = True
        Left = 443
        Top = 2
        Width = 1
        Height = 24
        Margins.Left = 1
        Margins.Top = 2
        Margins.Right = 1
        Margins.Bottom = 0
        Align = alLeft
        Pen.Color = clWindow
        ExplicitLeft = 432
        ExplicitTop = 5
      end
      object Panel_OrderBy: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label_OrderBy: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 7
          Width = 124
          Height = 16
          Margins.Left = 5
          Margins.Top = 7
          Align = alLeft
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object CBox_OrderBy: TComboBox
          AlignWithMargins = True
          Left = 134
          Top = 4
          Width = 305
          Height = 21
          Cursor = crArrow
          Margins.Left = 2
          Margins.Top = 4
          Align = alClient
          Style = csDropDownList
          Color = clBtnFace
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = #1076#1072#1090#1077' '#1080' '#1074#1088#1077#1084#1077#1085#1080' '#1079#1072#1087#1080#1089#1080' ('#1088#1072#1085#1085#1103#1103' -> '#1087#1086#1079#1076#1085#1103#1103')'
          OnChange = CBox_OrderByChange
          Items.Strings = (
            #1076#1072#1090#1077' '#1080' '#1074#1088#1077#1084#1077#1085#1080' '#1079#1072#1087#1080#1089#1080' ('#1088#1072#1085#1085#1103#1103' -> '#1087#1086#1079#1076#1085#1103#1103')'
            #1076#1072#1090#1077' '#1080' '#1074#1088#1077#1084#1077#1085#1080' '#1079#1072#1087#1080#1089#1080' ('#1087#1086#1079#1076#1085#1103#1103' -> '#1088#1072#1085#1085#1103#1103')'
            #1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1091' (A -> Z)'
            #1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1091' (Z -> A)'
            #1088#1077#1081#1089#1091' (A -> Z)'
            #1088#1077#1081#1089#1091' (Z -> A)')
        end
        object CloseDB: TButton
          Left = 383
          Top = 1
          Width = 59
          Height = 25
          Align = alCustom
          Caption = 'Deactive'
          TabOrder = 1
          OnClick = CloseDBClick
        end
      end
      object Button7: TButton
        Left = 443
        Top = -2
        Width = 25
        Height = 25
        Caption = 'GK'
        TabOrder = 1
        OnClick = Button7Click
      end
      object Edit8: TEdit
        Left = 529
        Top = 2
        Width = 52
        Height = 21
        TabOrder = 2
        Text = 'Edit8'
      end
      object Button8: TButton
        Left = 783
        Top = 0
        Width = 47
        Height = 25
        Caption = 'Button8'
        TabOrder = 3
        OnClick = Button8Click
      end
      object Edit10: TEdit
        Left = 647
        Top = 3
        Width = 70
        Height = 21
        TabOrder = 4
        Text = 'Edit10'
      end
      object Edit11: TEdit
        Left = 723
        Top = 3
        Width = 54
        Height = 21
        TabOrder = 5
        Text = 'Edit11'
      end
      object Button13: TButton
        Left = 479
        Top = 0
        Width = 27
        Height = 25
        Caption = 'DK'
        TabOrder = 6
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 512
        Top = 16
        Width = 33
        Height = 1
        Caption = 'Button14'
        TabOrder = 7
      end
      object Button15: TButton
        Left = 1078
        Top = -2
        Width = 53
        Height = 25
        Anchors = []
        Caption = 'Active'
        TabOrder = 8
        OnClick = Button15Click
      end
      object Button30: TButton
        Left = 997
        Top = 4
        Width = 75
        Height = 19
        Caption = 'Active_2 '
        TabOrder = 9
        OnClick = Active2
      end
    end
    object GrPanel_TargetsAndTargsIndDatas: TGridPanel
      AlignWithMargins = True
      Left = 19
      Top = 37
      Width = 1124
      Height = 364
      Margins.Right = 0
      Margins.Bottom = 1
      BevelOuter = bvNone
      Color = clMoneyGreen
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel_Targets
          Row = 0
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 1
      object Panel_Targets: TPanel
        Left = 0
        Top = 0
        Width = 1121
        Height = 359
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Panel_TargetsTableBack: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 1118
          Height = 332
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 1
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Panel_TargetsTable: TPanel
            Left = 0
            Top = 0
            Width = 1114
            Height = 328
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object DBGrid_Targets: TDBGridEh
              Left = 0
              Top = 0
              Width = 1114
              Height = 328
              Align = alClient
              Color = cl3DLight
              DataSource = DBForm.Targets_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              TabOrder = 0
              TitleParams.MultiTitle = True
              OnDblClick = DBGrid_TargetsDblClick
              Columns = <
                item
                  AutoFitColWidth = False
                  Color = clBtnFace
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDENTIFIKATOR'
                  Footers = <>
                  Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
                  Width = 150
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'BAROMETR_VISOTA'
                  Footers = <>
                  Title.Caption = #1042#1099#1089#1086#1090#1099'|'#1073#1072#1088#1086#1084#1077#1090#1088#1080#1095#1077#1089#1082#1072#1103'|'#1084
                  Width = 120
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'GEOMETR_VISOTA'
                  Footers = <>
                  Title.Caption = #1042#1099#1089#1086#1090#1099'|'#1075#1077#1086#1084#1077#1090#1088#1080#1095#1077#1089#1082#1072#1103'|'#1084
                  Width = 120
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'RAZNOST_BG_VISOT'
                  Footers = <>
                  Title.Caption = #1042#1099#1089#1086#1090#1099'|'#1088#1072#1079#1085#1086#1089#1090#1100'|'#1084
                  Width = 80
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VREMYA_ZAPISI'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1087#1080#1089#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                  Width = 150
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SHIROTA_STR'
                  Footers = <>
                  Title.Caption = #1064#1080#1088#1086#1090#1072'|'#1089#1090#1088'.'
                  Width = 80
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.0000000'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SHIROTA_DEC'
                  Footers = <>
                  Title.Caption = #1064#1080#1088#1086#1090#1072'|'#1076#1077#1089'.'
                  Width = 80
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DOLGOTA_STR'
                  Footers = <>
                  Title.Caption = #1044#1086#1083#1075#1086#1090#1072'|'#1089#1090#1088'.'
                  Width = 80
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.0000000'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DOLGOTA_DEC'
                  Footers = <>
                  Title.Caption = #1044#1086#1083#1075#1086#1090#1072'|'#1076#1077#1089'.'
                  Width = 80
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'REYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1081#1089
                  Width = 100
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'TIP_BORTA'
                  Footers = <>
                  Title.Caption = #1058#1080#1087' '#1073#1086#1088#1090#1072
                  Width = 73
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'RASSTOYNIE'
                  Footers = <>
                  Title.Caption = #1056#1040#1057#1057#1058#1054#1071#1053#1048#1045
                  Width = 85
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DOSTOVERNOST'
                  Footers = <>
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'AIR_SPEED'
                  Footers = <>
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object Panel_TargetsButtons: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 333
          Width = 1118
          Height = 26
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Shape_Split1: TShape
            AlignWithMargins = True
            Left = 396
            Top = 1
            Width = 1
            Height = 24
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Pen.Color = clWindow
            ExplicitLeft = 259
            ExplicitTop = 2
          end
          object Shape_Split2: TShape
            AlignWithMargins = True
            Left = 505
            Top = 1
            Width = 1
            Height = 24
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Pen.Color = clWindow
            ExplicitLeft = 433
          end
          object Shape_Split3: TShape
            AlignWithMargins = True
            Left = 947
            Top = 1
            Width = 1
            Height = 24
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Pen.Color = clWindow
            ExplicitLeft = 315
            ExplicitTop = 2
          end
          object Btn_TargetsDeleteAll: TButton
            AlignWithMargins = True
            Left = 1028
            Top = 1
            Width = 90
            Height = 24
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Align = alRight
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
            TabOrder = 4
            OnClick = Btn_TargetsDeleteAllClick
          end
          object Btn_LoadFromFile: TButton
            AlignWithMargins = True
            Left = 136
            Top = 1
            Width = 170
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1092#1072#1081#1083#1072
            TabOrder = 0
            OnClick = Btn_LoadFromFileClick
          end
          object Btn_Append: TButton
            AlignWithMargins = True
            Left = 312
            Top = 1
            Width = 80
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 1
            OnClick = Btn_AppendClick
          end
          object Btn_Edit: TButton
            AlignWithMargins = True
            Left = 401
            Top = 1
            Width = 100
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 2
            OnClick = Btn_EditClick
          end
          object Btn_TargetsDelete: TButton
            AlignWithMargins = True
            Left = 952
            Top = 1
            Width = 70
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alRight
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 3
            OnClick = Btn_TargetsDeleteClick
          end
          object Btn_Duplicate: TButton
            AlignWithMargins = True
            Left = 0
            Top = 1
            Width = 130
            Height = 24
            Margins.Left = 0
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
            TabOrder = 5
            OnClick = Btn_DuplicateClick
          end
          object Button1: TButton
            AlignWithMargins = True
            Left = 510
            Top = 1
            Width = 24
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alLeft
            TabOrder = 6
            Visible = False
            OnClick = Button1Click
          end
        end
      end
    end
    object Edit9: TEdit
      Left = 587
      Top = 4
      Width = 54
      Height = 21
      TabOrder = 2
      Text = 'Edit9'
    end
    object Button12: TButton
      Left = 974
      Top = 3
      Width = 17
      Height = 25
      Caption = 'Button12'
      TabOrder = 3
    end
    object Panel24: TPanel
      Left = 19
      Top = 407
      Width = 1121
      Height = 41
      Caption = 'Panel24'
      TabOrder = 4
      object Edit28: TEdit
        Left = 17
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 0
        OnKeyUp = findIDALL
      end
      object Button31: TButton
        Left = 144
        Top = 8
        Width = 44
        Height = 23
        Caption = 'Run BD'
        TabOrder = 1
        OnClick = Button31Click
      end
    end
  end
  object Button9: TButton
    Left = 838
    Top = -5
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 1
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 919
    Top = -5
    Width = 23
    Height = 25
    Caption = 'Button10'
    TabOrder = 2
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 948
    Top = -5
    Width = 22
    Height = 25
    Caption = 'Button11'
    TabOrder = 3
    OnClick = Button11Click
  end
  object Panel1: TPanel
    Left = 5
    Top = 444
    Width = 1156
    Height = 405
    Caption = 'Panel1'
    Color = clLime
    TabOrder = 4
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 19
      Top = -2
      Width = 1126
      Height = 386
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      BevelOuter = bvNone
      Caption = #1055#1055#1055#1055
      Color = clRed
      TabOrder = 0
      object Shape1: TShape
        AlignWithMargins = True
        Left = 0
        Top = 29
        Width = 1123
        Height = 1
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Pen.Color = clWindow
        ExplicitLeft = -1
        ExplicitTop = -1
        ExplicitWidth = 808
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 740
        Top = 32
        Width = 373
        Height = 300
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 271
          Width = 367
          Height = 26
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn2: TBitBtn
            Left = 0
            Top = -3
            Width = 129
            Height = 28
            Caption = 'Run full Graph'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn_ValueWeightGraphClick
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
              DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
              DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
              C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
              AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
              C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
              FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
              96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
              FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
              A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
              FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
              8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
              A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
              9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
              9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
              8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
              74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
              5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
              FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
              FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
              FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
              2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
          end
        end
        object BitBtn3: TBitBtn
          Left = 330
          Top = -3
          Width = 34
          Height = 296
          Align = alCustom
          TabOrder = 1
          OnClick = Graph
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
            DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
            DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
            C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
            AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
            C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
            FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
            96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
            FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
            A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
            FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
            8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
            A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
            9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
            9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
            8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
            74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
            5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
            FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
            FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
            FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
            2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = -1
          Width = 217
          Height = 249
          Color = clActiveBorder
          DataSource = DBForm.Statistics1_DS
          DynProps = <>
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 2
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'VREMYA_SOZDANIYA1'
              Footers = <>
              ReadOnly = True
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'REYS1'
              Footers = <>
              Width = 39
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'BEG_EH1'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'END_EH1'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1123
        Height = 29
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object Image1: TImage
          AlignWithMargins = True
          Left = 1
          Top = 5
          Width = 20
          Height = 20
          Margins.Left = 1
          Margins.Top = 5
          Margins.Bottom = 4
          Align = alLeft
          Picture.Data = {
            07544269746D6170E6040000424DE60400000000000036000000280000001400
            0000140000000100180000000000B0040000C30E0000C30E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFDFDCDADFDCDADFDCDADFDCDADFDCDADFDCDAFFFFFFFFFFFFDFDCDADFDC
            DADFDCDADFDCDADFDCDADFDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D3D0C1
            B8AFC0B6ABC1B6ACC1B6ACC0B6ABC1B8AFD5D3D0D5D3D0C1B8AFC0B6ABC1B6AC
            C1B6ACC0B6ABC1B8AFD5D3D0FFFFFFFFFFFFFFFFFFFFFFFFCBC8C6B6ABA0C5B7
            AAC7B9ABC7B9ABC5B7AAB5AA9FCBC8C6CBC8C6B5AA9FC5B7AAC7B9ABC7B9ABC5
            B7AAB6ABA0CBC8C6FFFFFFFFFFFFFFFFFFFFFFFFC0BEBBADA196B5A391B7A492
            B7A492B5A391AB9E91AB9F93AB9F93AB9E91B5A391B7A492B7A492B5A391ADA1
            96C0BEBBFFFFFFFFFFFFFFFFFFFFFFFFB6B3B1A3978BA99A8BAA9B8CAA9B8CA9
            9A8CA19385A89584A89584A19385A99A8CAA9B8CAA9B8CA99A8BA3978BB6B3B1
            FFFFFFFFFFFFFFFFFFFFFFFFACAAA79B8E82A09183A19284A19284A09183998B
            7D9A8C7F9A8C7F998B7DA09183A19284A19284A091839B8E82ACAAA7FFFFFFFF
            FFFFFFFFFFFFFFFFA29F9D92847898887A998A7C998A7C98887A928476A29F9D
            A29F9D92847698887A998A7C998A7C98887A928478A29F9DFFFFFFFFFFFFFFFF
            FFFFFFFFAAA7A4897B6E948677958879958879948677897B6EFFFFFFFFFFFF89
            7B6E948677958879958879948677897B6EAAA7A4FFFFFFFFFFFFFFFFFFFFFFFF
            AAA7A48073657F6E5F7F6E5E7F6E5E7E6D5D7E6F60AAA7A4AAA7A47E6F607E6D
            5D7F6E5E7F6E5E7E6E5F807365AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
            A7A4766556796552796552786552756353756556756556756353786552796552
            786552756556AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A46D5E
            4F7362507463517362506C5A486E5B476E5B476C5A487362507463517362506D
            5E4FAAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A46455456C5D4F
            6B5A486C5D4F6352406353426353426352406C5E4F6B5A486C5E4F645545AAA7
            A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A45B4C3C5A4937614F3C5A
            49375A4B3BAAA7A4AAA7A45B4C3B5B4A38614F3C5B4A375B4C3CAAA7A4FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A452412F58493952412FAAA7
            A4FFFFFFFFFFFFAAA7A452412F58493A52412FAAA7A4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A4493A2B483827493A2BAAA7A4FFFFFF
            FFFFFFAAA7A4493A2B483827493A2BAAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A4AAA7A4AAA7A4FFFFFFFFFFFFFFFFFFFF
            FFFFAAA7A4AAA7A4AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Stretch = True
          Transparent = True
          ExplicitTop = 4
          ExplicitHeight = 21
        end
        object Edit12: TEdit
          AlignWithMargins = True
          Left = 24
          Top = 4
          Width = 167
          Height = 21
          Margins.Left = 0
          Margins.Top = 4
          Margins.Bottom = 4
          Align = alLeft
          Color = clGradientInactiveCaption
          TabOrder = 0
          OnDblClick = Edit_TargsIndSearchDblClick2
          OnKeyUp = findID
        end
        object Button16: TButton
          Left = 197
          Top = 1
          Width = 113
          Height = 25
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit13: TEdit
          Left = 316
          Top = 2
          Width = 37
          Height = 21
          TabOrder = 2
          Text = 'Edit1'
        end
        object Edit14: TEdit
          Left = 367
          Top = 5
          Width = 113
          Height = 21
          Color = clMedGray
          TabOrder = 3
        end
        object Button17: TButton
          Left = 486
          Top = 1
          Width = 44
          Height = 25
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button18: TButton
          Left = 536
          Top = 1
          Width = 37
          Height = 25
          Caption = '-'#1050#1086#1083'-'
          TabOrder = 5
          OnClick = Kol_VS1
        end
        object Edit15: TEdit
          Left = 579
          Top = 1
          Width = 49
          Height = 21
          TabOrder = 6
        end
        object Edit16: TEdit
          Left = 628
          Top = 1
          Width = 49
          Height = 21
          TabOrder = 7
        end
        object Edit17: TEdit
          Left = 670
          Top = 1
          Width = 44
          Height = 21
          TabOrder = 8
        end
        object Button19: TButton
          Left = 841
          Top = 1
          Width = 41
          Height = 25
          TabOrder = 9
          OnClick = blok1Src
        end
        object Button20: TButton
          Left = 720
          Top = 3
          Width = 41
          Height = 25
          TabOrder = 10
          OnClick = Search
        end
        object Edit18: TEdit
          Left = 767
          Top = 1
          Width = 34
          Height = 21
          TabOrder = 11
        end
        object Edit19: TEdit
          Left = 801
          Top = 1
          Width = 34
          Height = 21
          TabOrder = 12
          OnChange = Edit7Change
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 30
        Width = 742
        Height = 356
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 217
          Height = 298
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 213
            Height = 289
            BevelOuter = bvNone
            TabOrder = 0
            object DBGridEh4: TDBGridEh
              Left = 2
              Top = 3
              Width = 212
              Height = 286
              AutoFitColWidths = True
              Color = cl3DLight
              DataSource = DBForm.TargsInd1_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              Columns = <
                item
                  Color = clBtnFace
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDENTIFIKATOR'
                  Footers = <>
                  Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
                  Width = 105
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SRZNOC'
                  Footers = <>
                  Title.Caption = #1057#1088#1077#1076#1085#1103#1103' '#1088#1072#1079#1085#1086#1089#1090#1100'| '#1086#1094#1077#1085#1082#1080
                  Width = 83
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOL_S'
                  Footers = <>
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1077#1072#1085#1089#1086#1074
                  Width = 75
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object Panel9: TPanel
          AlignWithMargins = True
          Left = 221
          Top = 0
          Width = 493
          Height = 299
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 1
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 489
            Height = 295
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object DBGridEh5: TDBGridEh
              Left = -1
              Top = 3
              Width = 482
              Height = 286
              Color = cl3DLight
              DataSource = DBForm.Statistics1_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              OnDblClick = DBGrid_StatisticsDblClick
              Columns = <
                item
                  AutoFitColWidth = False
                  DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VREMYA_SOZDANIYA'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1086#1094#1077#1085#1082#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                  Width = 159
                end
                item
                  AutoFitColWidth = False
                  Color = clWindow
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OCENKA_S_VESOM'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072
                  Width = 110
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOLICHESTVO_SAMOLETOV'
                  Footers = <>
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                  Width = 110
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OCENKA_NAKLONA_ISOBARA'
                  Footers = <>
                  Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'|'#1084'/100 '#1082#1084
                  Width = 80
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'REYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1081#1089
                  Width = 100
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NEW_OCENKA_S_VESOM'
                  Footers = <>
                  Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                  Width = 120
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FL_SIGMA'
                  Footers = <>
                  Title.Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1072' | '#1087#1086' '#1089#1080#1075#1084#1077
                  Width = 60
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FL_SEANS'
                  Footers = <>
                  Title.Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1072' | '#1074'  '#1089#1077#1072#1085#1089#1077
                  Width = 65
                end>
              object RowDetailData: TRowDetailPanelControlEh
                object DBGridEh6: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 0
                  Height = 0
                  Align = alClient
                  Color = cl3DLight
                  DataSource = DBForm.Statistics_DS
                  DynProps = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FooterRowCount = 1
                  FooterParams.Color = clGradientInactiveCaption
                  FrozenCols = 1
                  IndicatorOptions = [gioShowRecNoEh]
                  OddRowColor = cl3DLight
                  Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleParams.MultiTitle = True
                  Columns = <
                    item
                      AutoFitColWidth = False
                      DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'VREMYA_SOZDANIYA'
                      Footers = <>
                      Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1086#1094#1077#1085#1082#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                      Width = 157
                    end
                    item
                      AutoFitColWidth = False
                      Color = clWindow
                      DisplayFormat = '0.00'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'OCENKA_S_VESOM'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clMaroon
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Footers = <>
                      Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072
                      Width = 110
                    end
                    item
                      AutoFitColWidth = False
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'KOLICHESTVO_SAMOLETOV'
                      Footers = <>
                      Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                      Width = 110
                    end
                    item
                      AutoFitColWidth = False
                      DisplayFormat = '0.00'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'OCENKA_NAKLONA_ISOBARA'
                      Footers = <>
                      Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'|'#1084'/100 '#1082#1084
                      Width = 80
                    end
                    item
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'REYS'
                      Footers = <>
                      Title.Caption = #1056#1077#1081#1089
                      Width = 100
                    end
                    item
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'NEW_OCENKA_S_VESOM'
                      Footers = <>
                      Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                      Width = 120
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 302
          Width = 742
          Height = 54
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Shape2: TShape
            AlignWithMargins = True
            Left = 740
            Top = 1
            Width = 1
            Height = 52
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Pen.Color = clWindow
            ExplicitLeft = 206
            ExplicitTop = 5
            ExplicitHeight = 24
          end
          object Label6: TLabel
            Left = 382
            Top = 3
            Width = 196
            Height = 13
            Caption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090#1073#1088#1072#1082#1086#1074#1082#1080' '#1074#1085#1091#1090#1088#1080' '#1089#1077#1072#1085#1089#1072' %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 16
            Top = 11
            Width = 19
            Height = 13
            Caption = 'MIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 96
            Top = 11
            Width = 21
            Height = 13
            Caption = 'MAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 133
            Top = 11
            Width = 80
            Height = 13
            Caption = #1056#1072#1079#1085#1086#1089#1090#1100' '#1074#1099#1089#1086#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 219
            Top = 11
            Width = 74
            Height = 13
            Caption = #1056#1072#1079#1073#1088#1086#1089' '#1074#1099#1089#1086#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Button21: TButton
            AlignWithMargins = True
            Left = 562
            Top = 26
            Width = 90
            Height = 24
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
            TabOrder = 0
            OnClick = Btn_TargsIndDeleteAllClick
          end
          object Button22: TButton
            AlignWithMargins = True
            Left = 489
            Top = 26
            Width = 70
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 1
            OnClick = Btn_TargsIndDeleteClick
          end
          object DBEditEh6: TDBEditEh
            Left = 0
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'MIN_H'
            DataSource = DBForm.TargsInd1_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 2
            Visible = True
          end
          object DBEditEh7: TDBEditEh
            Left = 71
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'MAX_H'
            DataSource = DBForm.TargsInd1_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 3
            Visible = True
          end
          object DBEditEh8: TDBEditEh
            Left = 142
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZN_VISOT'
            DataSource = DBForm.TargsInd1_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 4
            Visible = True
          end
          object DBEditEh9: TDBEditEh
            Left = 584
            Top = 1
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'PROC_OTBR'
            DataSource = DBForm.TargsInd1_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 5
            Visible = True
          end
          object DBEditEh10: TDBEditEh
            Left = 219
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZNOST_L_H'
            DataSource = DBForm.TargsInd1_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 6
            Visible = True
          end
        end
      end
    end
  end
  object Panel12: TPanel
    Left = 5
    Top = 848
    Width = 1156
    Height = 425
    Caption = 'Panel12'
    TabOrder = 5
    object Panel13: TPanel
      AlignWithMargins = True
      Left = 19
      Top = 5
      Width = 1126
      Height = 386
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      BevelOuter = bvNone
      Caption = #1055#1055#1055#1055
      Color = clRed
      TabOrder = 0
      object Shape3: TShape
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1123
        Height = 1
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Pen.Color = clWindow
        ExplicitLeft = -1
        ExplicitTop = -1
        ExplicitWidth = 808
      end
      object Panel14: TPanel
        AlignWithMargins = True
        Left = 748
        Top = 30
        Width = 378
        Height = 300
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Panel15: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 271
          Width = 372
          Height = 26
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn4: TBitBtn
            Left = 0
            Top = 0
            Width = 26
            Height = 26
            Align = alLeft
            TabOrder = 0
            OnClick = Graph
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
              DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
              DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
              C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
              AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
              C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
              FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
              96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
              FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
              A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
              FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
              8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
              A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
              9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
              9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
              8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
              74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
              5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
              FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
              FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
              FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
              2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
          end
        end
        object BitBtn5: TBitBtn
          Left = 327
          Top = -3
          Width = 34
          Height = 296
          Align = alCustom
          TabOrder = 1
          OnClick = BitBtn_ValueWeightGraphClick1
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
            DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
            DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
            C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
            AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
            C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
            FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
            96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
            FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
            A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
            FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
            8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
            A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
            9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
            9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
            8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
            74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
            5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
            FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
            FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
            FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
            2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
        object DBGridEh7: TDBGridEh
          Left = 0
          Top = -1
          Width = 217
          Height = 250
          Color = clActiveBorder
          DataSource = DBForm.Statistics2_DS
          DynProps = <>
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 2
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'VREMYA_SOZDANIYA'
              Footers = <>
              ReadOnly = True
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'REYS'
              Footers = <>
              Width = 39
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'BEG_EH'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'END_EH'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel16: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 1
        Width = 1123
        Height = 29
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object Image2: TImage
          AlignWithMargins = True
          Left = 1
          Top = 5
          Width = 20
          Height = 20
          Margins.Left = 1
          Margins.Top = 5
          Margins.Bottom = 4
          Align = alLeft
          Picture.Data = {
            07544269746D6170E6040000424DE60400000000000036000000280000001400
            0000140000000100180000000000B0040000C30E0000C30E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFDFDCDADFDCDADFDCDADFDCDADFDCDADFDCDAFFFFFFFFFFFFDFDCDADFDC
            DADFDCDADFDCDADFDCDADFDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D3D0C1
            B8AFC0B6ABC1B6ACC1B6ACC0B6ABC1B8AFD5D3D0D5D3D0C1B8AFC0B6ABC1B6AC
            C1B6ACC0B6ABC1B8AFD5D3D0FFFFFFFFFFFFFFFFFFFFFFFFCBC8C6B6ABA0C5B7
            AAC7B9ABC7B9ABC5B7AAB5AA9FCBC8C6CBC8C6B5AA9FC5B7AAC7B9ABC7B9ABC5
            B7AAB6ABA0CBC8C6FFFFFFFFFFFFFFFFFFFFFFFFC0BEBBADA196B5A391B7A492
            B7A492B5A391AB9E91AB9F93AB9F93AB9E91B5A391B7A492B7A492B5A391ADA1
            96C0BEBBFFFFFFFFFFFFFFFFFFFFFFFFB6B3B1A3978BA99A8BAA9B8CAA9B8CA9
            9A8CA19385A89584A89584A19385A99A8CAA9B8CAA9B8CA99A8BA3978BB6B3B1
            FFFFFFFFFFFFFFFFFFFFFFFFACAAA79B8E82A09183A19284A19284A09183998B
            7D9A8C7F9A8C7F998B7DA09183A19284A19284A091839B8E82ACAAA7FFFFFFFF
            FFFFFFFFFFFFFFFFA29F9D92847898887A998A7C998A7C98887A928476A29F9D
            A29F9D92847698887A998A7C998A7C98887A928478A29F9DFFFFFFFFFFFFFFFF
            FFFFFFFFAAA7A4897B6E948677958879958879948677897B6EFFFFFFFFFFFF89
            7B6E948677958879958879948677897B6EAAA7A4FFFFFFFFFFFFFFFFFFFFFFFF
            AAA7A48073657F6E5F7F6E5E7F6E5E7E6D5D7E6F60AAA7A4AAA7A47E6F607E6D
            5D7F6E5E7F6E5E7E6E5F807365AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
            A7A4766556796552796552786552756353756556756556756353786552796552
            786552756556AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A46D5E
            4F7362507463517362506C5A486E5B476E5B476C5A487362507463517362506D
            5E4FAAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A46455456C5D4F
            6B5A486C5D4F6352406353426353426352406C5E4F6B5A486C5E4F645545AAA7
            A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A45B4C3C5A4937614F3C5A
            49375A4B3BAAA7A4AAA7A45B4C3B5B4A38614F3C5B4A375B4C3CAAA7A4FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A452412F58493952412FAAA7
            A4FFFFFFFFFFFFAAA7A452412F58493A52412FAAA7A4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A4493A2B483827493A2BAAA7A4FFFFFF
            FFFFFFAAA7A4493A2B483827493A2BAAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A4AAA7A4AAA7A4FFFFFFFFFFFFFFFFFFFF
            FFFFAAA7A4AAA7A4AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Stretch = True
          Transparent = True
          ExplicitTop = 4
          ExplicitHeight = 21
        end
        object Edit20: TEdit
          AlignWithMargins = True
          Left = 24
          Top = 4
          Width = 167
          Height = 21
          Margins.Left = 0
          Margins.Top = 4
          Margins.Bottom = 4
          Align = alLeft
          Color = clGradientInactiveCaption
          TabOrder = 0
          OnDblClick = Edit_TargsIndSearchDblClick3
          OnKeyUp = findID2
        end
        object Button23: TButton
          Left = 197
          Top = 1
          Width = 113
          Height = 25
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit21: TEdit
          Left = 316
          Top = 2
          Width = 37
          Height = 21
          TabOrder = 2
          Text = 'Edit1'
        end
        object Edit22: TEdit
          Left = 367
          Top = 2
          Width = 113
          Height = 21
          Color = clMedGray
          TabOrder = 3
        end
        object Button24: TButton
          Left = 486
          Top = 1
          Width = 44
          Height = 25
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button25: TButton
          Left = 536
          Top = 1
          Width = 37
          Height = 25
          Caption = '-'#1050#1086#1083'-'
          TabOrder = 5
          OnClick = Kol_VS2
        end
        object Edit23: TEdit
          Left = 579
          Top = 1
          Width = 49
          Height = 21
          TabOrder = 6
        end
        object Edit24: TEdit
          Left = 634
          Top = 1
          Width = 49
          Height = 21
          TabOrder = 7
        end
        object Edit25: TEdit
          Left = 670
          Top = 1
          Width = 44
          Height = 21
          TabOrder = 8
        end
        object Button26: TButton
          Left = 841
          Top = 1
          Width = 41
          Height = 25
          TabOrder = 9
          OnClick = blok2Src
        end
        object Button27: TButton
          Left = 720
          Top = 3
          Width = 41
          Height = 25
          TabOrder = 10
          OnClick = Search1
        end
        object Edit26: TEdit
          Left = 767
          Top = 1
          Width = 34
          Height = 21
          TabOrder = 11
        end
        object Edit27: TEdit
          Left = 801
          Top = 1
          Width = 34
          Height = 21
          TabOrder = 12
          OnChange = Edit7Change
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 30
        Width = 742
        Height = 356
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Panel18: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 217
          Height = 257
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Panel19: TPanel
            Left = 0
            Top = 0
            Width = 213
            Height = 249
            BevelOuter = bvNone
            TabOrder = 0
            object DBGridEh8: TDBGridEh
              Left = 2
              Top = 3
              Width = 213
              Height = 249
              AutoFitColWidths = True
              Color = cl3DLight
              DataSource = DBForm.TargsInd2_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              Columns = <
                item
                  Color = clBtnFace
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'IDENTIFIKATOR'
                  Footers = <>
                  Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
                  Width = 105
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SRZNOC'
                  Footers = <>
                  Title.Caption = #1057#1088#1077#1076#1085#1103#1103' '#1088#1072#1079#1085#1086#1089#1090#1100'| '#1086#1094#1077#1085#1082#1080
                  Width = 83
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOL_S'
                  Footers = <>
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1077#1072#1085#1089#1086#1074
                  Width = 75
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object Panel20: TPanel
          AlignWithMargins = True
          Left = 221
          Top = 0
          Width = 460
          Height = 257
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 1
          object Panel21: TPanel
            Left = 0
            Top = 0
            Width = 456
            Height = 253
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object DBGridEh9: TDBGridEh
              Left = -1
              Top = 3
              Width = 458
              Height = 249
              Color = cl3DLight
              DataSource = DBForm.Statistics2_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              OnDblClick = DBGrid_StatisticsDblClick
              Columns = <
                item
                  AutoFitColWidth = False
                  DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VREMYA_SOZDANIYA'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1086#1094#1077#1085#1082#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                  Width = 157
                end
                item
                  AutoFitColWidth = False
                  Color = clWindow
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OCENKA_S_VESOM'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072
                  Width = 110
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOLICHESTVO_SAMOLETOV'
                  Footers = <>
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                  Width = 110
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OCENKA_NAKLONA_ISOBARA'
                  Footers = <>
                  Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'|'#1084'/100 '#1082#1084
                  Width = 80
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'REYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1081#1089
                  Width = 100
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NEW_OCENKA_S_VESOM'
                  Footers = <>
                  Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                  Width = 120
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FL_SIGMA'
                  Footers = <>
                  Title.Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1072' | '#1087#1086' '#1089#1080#1075#1084#1077
                  Width = 60
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FL_SEANS'
                  Footers = <>
                  Title.Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1072' | '#1074'  '#1089#1077#1072#1085#1089#1077
                  Width = 60
                end>
              object RowDetailData: TRowDetailPanelControlEh
                object DBGridEh10: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 0
                  Height = 0
                  Align = alClient
                  Color = cl3DLight
                  DataSource = DBForm.Statistics_DS
                  DynProps = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FooterRowCount = 1
                  FooterParams.Color = clGradientInactiveCaption
                  FrozenCols = 1
                  IndicatorOptions = [gioShowRecNoEh]
                  OddRowColor = cl3DLight
                  Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleParams.MultiTitle = True
                  Columns = <
                    item
                      AutoFitColWidth = False
                      DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'VREMYA_SOZDANIYA'
                      Footers = <>
                      Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1086#1094#1077#1085#1082#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                      Width = 157
                    end
                    item
                      AutoFitColWidth = False
                      Color = clWindow
                      DisplayFormat = '0.00'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'OCENKA_S_VESOM'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clMaroon
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Footers = <>
                      Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072
                      Width = 110
                    end
                    item
                      AutoFitColWidth = False
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'KOLICHESTVO_SAMOLETOV'
                      Footers = <>
                      Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                      Width = 110
                    end
                    item
                      AutoFitColWidth = False
                      DisplayFormat = '0.00'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'OCENKA_NAKLONA_ISOBARA'
                      Footers = <>
                      Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'|'#1084'/100 '#1082#1084
                      Width = 80
                    end
                    item
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'REYS'
                      Footers = <>
                      Title.Caption = #1056#1077#1081#1089
                      Width = 100
                    end
                    item
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'NEW_OCENKA_S_VESOM'
                      Footers = <>
                      Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                      Width = 120
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
          end
        end
        object Panel22: TPanel
          Left = 0
          Top = 302
          Width = 742
          Height = 54
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Shape4: TShape
            AlignWithMargins = True
            Left = 740
            Top = 1
            Width = 1
            Height = 52
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Pen.Color = clWindow
            ExplicitLeft = 206
            ExplicitTop = 5
            ExplicitHeight = 24
          end
          object Label11: TLabel
            Left = 382
            Top = 3
            Width = 196
            Height = 13
            Caption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090#1073#1088#1072#1082#1086#1074#1082#1080' '#1074#1085#1091#1090#1088#1080' '#1089#1077#1072#1085#1089#1072' %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 16
            Top = 11
            Width = 19
            Height = 13
            Caption = 'MIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 96
            Top = 11
            Width = 21
            Height = 13
            Caption = 'MAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 133
            Top = 11
            Width = 80
            Height = 13
            Caption = #1056#1072#1079#1085#1086#1089#1090#1100' '#1074#1099#1089#1086#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 219
            Top = 11
            Width = 74
            Height = 13
            Caption = #1056#1072#1079#1073#1088#1086#1089' '#1074#1099#1089#1086#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Button28: TButton
            AlignWithMargins = True
            Left = 562
            Top = 26
            Width = 90
            Height = 24
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
            TabOrder = 0
            OnClick = Btn_TargsIndDeleteAllClick
          end
          object Button29: TButton
            AlignWithMargins = True
            Left = 489
            Top = 26
            Width = 70
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 1
            OnClick = Btn_TargsIndDeleteClick
          end
          object DBEditEh11: TDBEditEh
            Left = 0
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'MIN_H'
            DataSource = DBForm.TargsInd2_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 2
            Visible = True
          end
          object DBEditEh12: TDBEditEh
            Left = 71
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'MAX_H'
            DataSource = DBForm.TargsInd2_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 3
            Visible = True
          end
          object DBEditEh13: TDBEditEh
            Left = 142
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZN_VISOT'
            DataSource = DBForm.TargsInd2_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 4
            Visible = True
          end
          object DBEditEh14: TDBEditEh
            Left = 584
            Top = 1
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZNOST_L_H'
            DataSource = DBForm.TargsInd2_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 5
            Visible = True
          end
          object DBEditEh15: TDBEditEh
            Left = 219
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZN_VISOT'
            DataSource = DBForm.TargsInd2_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 6
            Visible = True
          end
        end
      end
    end
  end
  object Panel23: TPanel
    Left = 5
    Top = 1279
    Width = 1156
    Height = 425
    Caption = 'Panel23'
    TabOrder = 6
    object Panel_TargsInd: TPanel
      AlignWithMargins = True
      Left = 21
      Top = 30
      Width = 1135
      Height = 386
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      BevelOuter = bvNone
      Caption = #1055#1055#1055#1055
      Color = clRed
      TabOrder = 0
      object Shape_Split4: TShape
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 1132
        Height = 1
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Pen.Color = clWindow
        ExplicitLeft = -1
        ExplicitTop = -1
        ExplicitWidth = 808
      end
      object Panel_TargsIndGraph: TPanel
        AlignWithMargins = True
        Left = 748
        Top = 30
        Width = 387
        Height = 300
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Panel_TargsIndFunctionButtons: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 271
          Width = 381
          Height = 26
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn_ValueWeightGraph: TBitBtn
            Left = 0
            Top = 0
            Width = 26
            Height = 26
            Align = alLeft
            TabOrder = 0
            OnClick = BitBtn_ValueWeightGraphClick
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
              DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
              DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
              C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
              AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
              C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
              FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
              96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
              FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
              A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
              FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
              8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
              A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
              9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
              9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
              8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
              74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
              5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
              FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
              FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
              FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
              2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
          end
          object BitBtn6: TBitBtn
            Left = 280
            Top = 0
            Width = 26
            Height = 26
            Align = alCustom
            TabOrder = 1
            OnClick = BitBtn_ValueWeightGraphClick
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
              DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
              DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
              C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
              AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
              C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
              FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
              96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
              FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
              A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
              FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
              8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
              A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
              9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
              9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
              8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
              74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
              5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
              FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
              FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
              FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
              2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
          end
        end
        object BitBtn1: TBitBtn
          Left = 327
          Top = -3
          Width = 34
          Height = 296
          Align = alCustom
          TabOrder = 1
          OnClick = BitBtn_ValueWeightGraphClick1
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDADEDC
            DADEDCDADEDCDAFFFFFFDEDCDADEDCDADEDCDADEDCDAFFFFFFDEDCDADEDCDADE
            DCDADEDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0C1B8AEC0B5AAC0B5AA
            C1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8AED4D2D0C1B8AEC0B5AAC0B5AAC1B8
            AED4D2D0FFFFFFFFFFFFFFFFFFFFFFFFCAC8C6B6ABA0BAADA0BAADA0B6ABA0CA
            C8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6B6ABA0BAADA0BAADA0B6ABA0CAC8C6
            FFFFFFFFFFFFFFFFFFFFFFFFBFBDBBADA196B2A497B2A497ADA196BFBDBBADA1
            96B2A497B2A497ADA196BFBDBBADA196B2A497B2A497ADA196BFBDBBFFFFFFFF
            FFFFFFFFFFFFFFFFB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1A3978BA99A8C
            A99A8CA3978BB5B3B1A3978BA99A8CA99A8CA3978BB5B3B1FFFFFFFFFFFFFFFF
            FFFFFFFFABA9A79B8E819F90829F90829B8E81ABA9A79B8E82A09183A091839B
            8E82ABA9A79B8E82A09183A091839B8E82ABA9A7FFFFFFFFFFFFFFFFFFFFFFFF
            A19F9D93877B91847791847793877BA19F9D928477978778978778928477A19F
            9D928477978778978778928477A19F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
            9593979593979593979593979593887A6D8E7D6E8E7D6E887A6D979593887A6D
            8E7D6E8E7D6E887A6D979593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF8C8A887F70628373638373637F70628C8A887F706284746484
            74647F70628C8A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF83817F776A5D766858766858776A5D83817F7668597C6B5A7C6B5A7668
            5983817FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF7876747876747876747876747876746D5E4E7261507261506D5E4E787674
            FFFFFFFFFFFFFFFFFFFFFFFF635647635546FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF6E6C6A6354446857446857446354446E6C6AFFFFFFFF
            FFFFFFFFFFFFFFFF584938574633594A3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF63615F5A4C3D594A39594A395A4C3D63615FFFFFFFFFFFFFFFFF
            FFFFFFFF50402F4E3C284E3D2A504130FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5A58565A58565A58565A5856FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            46362444321E44321E45331F473828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2F1F3C
            2C1B3C2C1B3C2C1B3E2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = -1
          Width = 217
          Height = 249
          Color = clActiveBorder
          DataSource = DBForm.Statistics_DS
          DynProps = <>
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 2
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'VREMYA_SOZDANIYA'
              Footers = <>
              ReadOnly = True
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'REYS'
              Footers = <>
              Width = 39
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'BEG_EH'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'END_EH'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel_TargsIndFunctions: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 1
        Width = 1132
        Height = 29
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object Image_TargsIndSearch: TImage
          AlignWithMargins = True
          Left = 1
          Top = 5
          Width = 20
          Height = 20
          Margins.Left = 1
          Margins.Top = 5
          Margins.Bottom = 4
          Align = alLeft
          Picture.Data = {
            07544269746D6170E6040000424DE60400000000000036000000280000001400
            0000140000000100180000000000B0040000C30E0000C30E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFDFDCDADFDCDADFDCDADFDCDADFDCDADFDCDAFFFFFFFFFFFFDFDCDADFDC
            DADFDCDADFDCDADFDCDADFDCDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D3D0C1
            B8AFC0B6ABC1B6ACC1B6ACC0B6ABC1B8AFD5D3D0D5D3D0C1B8AFC0B6ABC1B6AC
            C1B6ACC0B6ABC1B8AFD5D3D0FFFFFFFFFFFFFFFFFFFFFFFFCBC8C6B6ABA0C5B7
            AAC7B9ABC7B9ABC5B7AAB5AA9FCBC8C6CBC8C6B5AA9FC5B7AAC7B9ABC7B9ABC5
            B7AAB6ABA0CBC8C6FFFFFFFFFFFFFFFFFFFFFFFFC0BEBBADA196B5A391B7A492
            B7A492B5A391AB9E91AB9F93AB9F93AB9E91B5A391B7A492B7A492B5A391ADA1
            96C0BEBBFFFFFFFFFFFFFFFFFFFFFFFFB6B3B1A3978BA99A8BAA9B8CAA9B8CA9
            9A8CA19385A89584A89584A19385A99A8CAA9B8CAA9B8CA99A8BA3978BB6B3B1
            FFFFFFFFFFFFFFFFFFFFFFFFACAAA79B8E82A09183A19284A19284A09183998B
            7D9A8C7F9A8C7F998B7DA09183A19284A19284A091839B8E82ACAAA7FFFFFFFF
            FFFFFFFFFFFFFFFFA29F9D92847898887A998A7C998A7C98887A928476A29F9D
            A29F9D92847698887A998A7C998A7C98887A928478A29F9DFFFFFFFFFFFFFFFF
            FFFFFFFFAAA7A4897B6E948677958879958879948677897B6EFFFFFFFFFFFF89
            7B6E948677958879958879948677897B6EAAA7A4FFFFFFFFFFFFFFFFFFFFFFFF
            AAA7A48073657F6E5F7F6E5E7F6E5E7E6D5D7E6F60AAA7A4AAA7A47E6F607E6D
            5D7F6E5E7F6E5E7E6E5F807365AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
            A7A4766556796552796552786552756353756556756556756353786552796552
            786552756556AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A46D5E
            4F7362507463517362506C5A486E5B476E5B476C5A487362507463517362506D
            5E4FAAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A46455456C5D4F
            6B5A486C5D4F6352406353426353426352406C5E4F6B5A486C5E4F645545AAA7
            A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A45B4C3C5A4937614F3C5A
            49375A4B3BAAA7A4AAA7A45B4C3B5B4A38614F3C5B4A375B4C3CAAA7A4FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A452412F58493952412FAAA7
            A4FFFFFFFFFFFFAAA7A452412F58493A52412FAAA7A4FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A4493A2B483827493A2BAAA7A4FFFFFF
            FFFFFFAAA7A4493A2B483827493A2BAAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFAAA7A4AAA7A4AAA7A4FFFFFFFFFFFFFFFFFFFF
            FFFFAAA7A4AAA7A4AAA7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Stretch = True
          Transparent = True
          ExplicitTop = 4
          ExplicitHeight = 21
        end
        object Edit_TargsIndSearch: TEdit
          AlignWithMargins = True
          Left = 24
          Top = 4
          Width = 167
          Height = 21
          Margins.Left = 0
          Margins.Top = 4
          Margins.Bottom = 4
          Align = alLeft
          Color = clGradientInactiveCaption
          TabOrder = 0
          OnDblClick = Edit_TargsIndSearchDblClick
          OnKeyUp = Edit_TargsIndSearchKeyUp
        end
        object Button2: TButton
          Left = 197
          Top = 1
          Width = 113
          Height = 25
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit1: TEdit
          Left = 316
          Top = 2
          Width = 37
          Height = 21
          TabOrder = 2
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 367
          Top = 4
          Width = 113
          Height = 21
          Color = clMedGray
          TabOrder = 3
          OnDblClick = BitBtn_ValueWeightGraphClick1
          OnKeyUp = Edit_TargsIndSearchKeyUp1
        end
        object Button3: TButton
          Left = 486
          Top = 1
          Width = 44
          Height = 25
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 536
          Top = 1
          Width = 37
          Height = 25
          Caption = '-'#1050#1086#1083'-'
          TabOrder = 5
          OnClick = Kol_VS3
        end
        object Edit3: TEdit
          Left = 579
          Top = 1
          Width = 49
          Height = 21
          TabOrder = 6
        end
        object Edit4: TEdit
          Left = 628
          Top = 1
          Width = 49
          Height = 21
          TabOrder = 7
        end
        object Edit5: TEdit
          Left = 670
          Top = 1
          Width = 44
          Height = 21
          TabOrder = 8
        end
        object Button5: TButton
          Left = 841
          Top = 1
          Width = 41
          Height = 25
          TabOrder = 9
          OnClick = blok3Src
        end
        object Button6: TButton
          Left = 720
          Top = 3
          Width = 41
          Height = 25
          TabOrder = 10
          OnClick = Button6Click
        end
        object Edit6: TEdit
          Left = 767
          Top = 1
          Width = 34
          Height = 21
          TabOrder = 11
        end
        object Edit7: TEdit
          Left = 801
          Top = 1
          Width = 34
          Height = 21
          TabOrder = 12
          OnChange = Edit7Change
        end
      end
      object Panel_TargsIndAndStatistics: TPanel
        Left = 0
        Top = 29
        Width = 742
        Height = 356
        BevelOuter = bvNone
        TabOrder = 2
        object Panel_TargsIndTableBack: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 217
          Height = 249
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Panel_TargsIndTable: TPanel
            Left = 1
            Top = 3
            Width = 213
            Height = 249
            BevelOuter = bvNone
            TabOrder = 0
            object DBGrid_TargsInd: TDBGridEh
              Left = 1
              Top = 1
              Width = 213
              Height = 249
              AutoFitColWidths = True
              Color = cl3DLight
              DataSource = DBForm.TargsInd_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              Columns = <
                item
                  AutoDropDown = True
                  ButtonStyle = cbsNone
                  Color = clBtnFace
                  DynProps = <>
                  DropDownBox.ColumnDefValues.DropDownSizing = True
                  EditButtons = <>
                  FieldName = 'IDENTIFIKATOR'
                  Footers = <>
                  Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
                  Width = 111
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SRZNOC'
                  Footers = <>
                  Title.Caption = #1057#1088#1077#1076#1085#1103#1103' '#1088#1072#1079#1085#1086#1089#1090#1100'| '#1086#1094#1077#1085#1082#1080
                  Width = 83
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOL_S'
                  Footers = <>
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1077#1072#1085#1089#1086#1074
                  Width = 75
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object Panel_StatisticsTableBack: TPanel
          AlignWithMargins = True
          Left = 221
          Top = 0
          Width = 460
          Height = 249
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 1
          object Panel_StatisticsTable: TPanel
            Left = 0
            Top = 0
            Width = 456
            Height = 245
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object DBGrid_Statistics: TDBGridEh
              Left = -1
              Top = 3
              Width = 458
              Height = 249
              Color = cl3DLight
              DataSource = DBForm.Statistics_DS
              DynProps = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterRowCount = 1
              FooterParams.Color = clGradientInactiveCaption
              FrozenCols = 1
              IndicatorOptions = [gioShowRecNoEh]
              OddRowColor = cl3DLight
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleParams.MultiTitle = True
              OnDblClick = DBGrid_StatisticsDblClick
              Columns = <
                item
                  AutoFitColWidth = False
                  DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'VREMYA_SOZDANIYA'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1086#1094#1077#1085#1082#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                  Width = 157
                end
                item
                  AutoFitColWidth = False
                  Color = clWindow
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OCENKA_S_VESOM'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072
                  Width = 110
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'KOLICHESTVO_SAMOLETOV'
                  Footers = <>
                  Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                  Width = 110
                end
                item
                  AutoFitColWidth = False
                  DisplayFormat = '0.00'
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'OCENKA_NAKLONA_ISOBARA'
                  Footers = <>
                  Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'|'#1084'/100 '#1082#1084
                  Width = 80
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'REYS'
                  Footers = <>
                  Title.Caption = #1056#1077#1081#1089
                  Width = 100
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'NEW_OCENKA_S_VESOM'
                  Footers = <>
                  Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                  Width = 120
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FL_SIGMA'
                  Footers = <>
                  Title.Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1072' | '#1087#1086' '#1089#1080#1075#1084#1077
                  Width = 60
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'FL_SEANS'
                  Footers = <>
                  Title.Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1072' | '#1074'  '#1089#1077#1072#1085#1089#1077
                  Width = 60
                end>
              object RowDetailData: TRowDetailPanelControlEh
                object DBGridEh1: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 0
                  Height = 0
                  Align = alClient
                  Color = cl3DLight
                  DataSource = DBForm.Statistics_DS
                  DynProps = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FooterRowCount = 1
                  FooterParams.Color = clGradientInactiveCaption
                  FrozenCols = 1
                  IndicatorOptions = [gioShowRecNoEh]
                  OddRowColor = cl3DLight
                  Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleParams.MultiTitle = True
                  Columns = <
                    item
                      AutoFitColWidth = False
                      DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'VREMYA_SOZDANIYA'
                      Footers = <>
                      Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1086#1094#1077#1085#1082#1080'|'#1076#1076'.'#1084#1084'.'#1075#1075#1075#1075' '#1095#1095':'#1084#1084':'#1089#1089
                      Width = 157
                    end
                    item
                      AutoFitColWidth = False
                      Color = clWindow
                      DisplayFormat = '0.00'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'OCENKA_S_VESOM'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clMaroon
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Footers = <>
                      Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072
                      Width = 110
                    end
                    item
                      AutoFitColWidth = False
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'KOLICHESTVO_SAMOLETOV'
                      Footers = <>
                      Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                      Width = 110
                    end
                    item
                      AutoFitColWidth = False
                      DisplayFormat = '0.00'
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'OCENKA_NAKLONA_ISOBARA'
                      Footers = <>
                      Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'|'#1084'/100 '#1082#1084
                      Width = 80
                    end
                    item
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'REYS'
                      Footers = <>
                      Title.Caption = #1056#1077#1081#1089
                      Width = 100
                    end
                    item
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'NEW_OCENKA_S_VESOM'
                      Footers = <>
                      Title.Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                      Width = 120
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
          end
        end
        object Panel_TargsIndButtons: TPanel
          Left = 0
          Top = 302
          Width = 742
          Height = 54
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Shape_Split6: TShape
            AlignWithMargins = True
            Left = 740
            Top = 1
            Width = 1
            Height = 52
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Pen.Color = clWindow
            ExplicitLeft = 206
            ExplicitTop = 5
            ExplicitHeight = 24
          end
          object Label1: TLabel
            Left = 382
            Top = 3
            Width = 196
            Height = 13
            Caption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1090#1073#1088#1072#1082#1086#1074#1082#1080' '#1074#1085#1091#1090#1088#1080' '#1089#1077#1072#1085#1089#1072' %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 16
            Top = 11
            Width = 19
            Height = 13
            Caption = 'MIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 96
            Top = 11
            Width = 21
            Height = 13
            Caption = 'MAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 133
            Top = 11
            Width = 80
            Height = 13
            Caption = #1056#1072#1079#1085#1086#1089#1090#1100' '#1074#1099#1089#1086#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 219
            Top = 11
            Width = 74
            Height = 13
            Caption = #1056#1072#1079#1073#1088#1086#1089' '#1074#1099#1089#1086#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Btn_TargsIndDeleteAll: TButton
            AlignWithMargins = True
            Left = 562
            Top = 26
            Width = 90
            Height = 24
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 1
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
            TabOrder = 0
            OnClick = Btn_TargsIndDeleteAllClick
          end
          object Btn_TargsIndDelete: TButton
            AlignWithMargins = True
            Left = 489
            Top = 26
            Width = 70
            Height = 24
            Margins.Top = 1
            Margins.Bottom = 1
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 1
            OnClick = Btn_TargsIndDeleteClick
          end
          object DBEditEh2: TDBEditEh
            Left = 0
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'MIN_H'
            DataSource = DBForm.TargsInd_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 2
            Visible = True
          end
          object DBEditEh1: TDBEditEh
            Left = 71
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'MAX_H'
            DataSource = DBForm.TargsInd_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 3
            Visible = True
          end
          object DBEditEh3: TDBEditEh
            Left = 142
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZN_VISOT'
            DataSource = DBForm.TargsInd_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 4
            Visible = True
          end
          object DBEditEh4: TDBEditEh
            Left = 584
            Top = 1
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'PROC_OTBR'
            DataSource = DBForm.TargsInd_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 5
            Visible = True
          end
          object DBEditEh5: TDBEditEh
            Left = 219
            Top = 30
            Width = 65
            Height = 21
            Alignment = taCenter
            AlwaysShowBorder = True
            DataField = 'RAZNOST_L_H'
            DataSource = DBForm.TargsInd_DS
            DynProps = <>
            EditButtons = <>
            TabOrder = 6
            Visible = True
          end
        end
      end
    end
  end
  object Panel25: TPanel
    Left = 8
    Top = 1710
    Width = 1105
    Height = 387
    Caption = 'Panel25'
    TabOrder = 7
    object GroupBox1: TGroupBox
      Left = 16
      Top = 0
      Width = 1081
      Height = 345
      Caption = 'GroupBox1'
      TabOrder = 0
      object DBGridEh12: TDBGridEh
        Left = 20
        Top = 21
        Width = 341
        Height = 308
        DataSource = DBForm.DataAnalys1_DS
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        ParentFont = False
        RowSizingAllowed = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            DropDownSpecRow.Font.Charset = DEFAULT_CHARSET
            DropDownSpecRow.Font.Color = clWindowText
            DropDownSpecRow.Font.Height = -15
            DropDownSpecRow.Font.Name = 'Tahoma'
            DropDownSpecRow.Font.Style = []
            EditButtons = <>
            FieldName = 'ID_BORTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1053#1086#1084#1077#1088' '#1042#1057
            Width = 80
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'RESULT50'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#8470'40'
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'RESULT100'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#8470'70'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBGridEh13: TDBGridEh
        Left = 367
        Top = 21
        Width = 341
        Height = 308
        DataSource = DBForm.DataAnalys2_DS
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_BORTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1053#1086#1084#1077#1088' '#1042#1057
            Width = 80
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'RESULT50'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#8470'40'
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'RSULT100'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#8470'70'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBGridEh11: TDBGridEh
        Left = 714
        Top = 21
        Width = 341
        Height = 308
        DataSource = DBForm.DataAnalys_DS
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        ParentFont = False
        TabOrder = 2
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_BORTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1053#1086#1084#1077#1088' '#1042#1057
            Width = 80
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'RESULT50'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#8470'40'
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'RESULT100'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077' '#8470'70'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Button32: TButton
      Left = 32
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
      OnClick = Button32Click
    end
    object Button33: TButton
      Left = 113
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Delete_All'
      TabOrder = 2
      OnClick = Button33Click
    end
    object Button34: TButton
      Left = 385
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 3
      OnClick = Button34Click
    end
    object Button35: TButton
      Left = 466
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Delete_All'
      TabOrder = 4
      OnClick = Button35Click
    end
    object Button36: TButton
      Left = 730
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 5
      OnClick = Button36Click
    end
    object Button37: TButton
      Left = 811
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Delete_All'
      TabOrder = 6
      OnClick = Button37Click
    end
  end
  object SaveDlg_ChTPSaveToFile: TSaveDialog
    Filter = 
      'CSV ('#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1080' - '#171';'#187') (*.csv)|*.csv|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|*.t' +
      'xt'
    Title = ' '#1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1094#1077#1083#1103#1084' '#1074' '#1092#1072#1081#1083
    Left = 539
    Top = 254
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'CSV ('#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1080' - '#171';'#187') (*.csv)|*.csv|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|*.t' +
      'xt'
    Title = ' '#1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1094#1077#1083#1103#1084' '#1074' '#1092#1072#1081#1083
    Left = 539
    Top = 254
  end
end
