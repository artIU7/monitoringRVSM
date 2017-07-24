object DBForm: TDBForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'DBForm'
  ClientHeight = 672
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MonitoringDB: TpFIBDatabase
    DBName = 'D:\_MonitoringRVSM_\Montor_R\DB_for_ADSB_stat\blok 3.GDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=')
    DefaultTransaction = Read_Transaction
    DefaultUpdateTransaction = Write_Transaction
    SQLDialect = 3
    Timeout = 0
    UpperOldNames = True
    LibraryName = 'D:\_MonitoringRVSM_\Montor_R\BD\fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 8
    Top = 8
  end
  object Targets: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGETS1'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SHIROTA_STR = :SHIROTA_STR,'
      '    SHIROTA_DEC = :SHIROTA_DEC,'
      '    DOLGOTA_STR = :DOLGOTA_STR,'
      '    DOLGOTA_DEC = :DOLGOTA_DEC,'
      '    BAROMETR_VISOTA = :BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA = :GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI = :VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    REYS = :REYS,'
      '    TIP_BORTA = :TIP_BORTA,'
      '    DOSTOVERNOST = :DOSTOVERNOST,'
      '    RASSTOYNIE = :RASSTOYNIE,'
      '    AIR_SPEED = :AIR_SPEED'
      'WHERE'
      '    ID_TARGET = :OLD_ID_TARGET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGETS1'
      'WHERE'
      '        ID_TARGET = :OLD_ID_TARGET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGETS1('
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE,'
      '    AIR_SPEED'
      ')'
      'VALUES('
      '    :ID_TARGET,'
      '    :IDENTIFIKATOR,'
      '    :SHIROTA_STR,'
      '    :SHIROTA_DEC,'
      '    :DOLGOTA_STR,'
      '    :DOLGOTA_DEC,'
      '    :BAROMETR_VISOTA,'
      '    :GEOMETR_VISOTA,'
      '    :VREMYA_ZAPISI,'
      '    :RAZNOST_BG_VISOT,'
      '    :REYS,'
      '    :TIP_BORTA,'
      '    :DOSTOVERNOST,'
      '    :RASSTOYNIE,'
      '    :AIR_SPEED'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE,'
      '    AIR_SPEED'
      'FROM'
      '    TARGETS1 '
      ''
      ' WHERE '
      '        TARGETS1.ID_TARGET = :OLD_ID_TARGET'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE,'
      '    AIR_SPEED'
      'FROM'
      '    TARGETS1 ')
    AutoUpdateOptions.UpdateTableName = 'TARGETS'
    AutoUpdateOptions.KeyFields = 'ID_TARGET'
    AutoUpdateOptions.GeneratorName = 'TARGETS_ID_TARGET_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    Left = 48
    Top = 8
    object TargetsID_TARGET: TFIBIntegerField
      FieldName = 'ID_TARGET'
    end
    object TargetsIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object TargetsSHIROTA_STR: TFIBStringField
      FieldName = 'SHIROTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object TargetsSHIROTA_DEC: TFIBFloatField
      FieldName = 'SHIROTA_DEC'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object TargetsDOLGOTA_STR: TFIBStringField
      FieldName = 'DOLGOTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object TargetsDOLGOTA_DEC: TFIBFloatField
      FieldName = 'DOLGOTA_DEC'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object TargetsBAROMETR_VISOTA: TFIBFloatField
      FieldName = 'BAROMETR_VISOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object TargetsGEOMETR_VISOTA: TFIBFloatField
      FieldName = 'GEOMETR_VISOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object TargetsVREMYA_ZAPISI: TFIBDateTimeField
      FieldName = 'VREMYA_ZAPISI'
      DisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    end
    object TargetsRAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object TargetsREYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object TargetsTIP_BORTA: TFIBStringField
      FieldName = 'TIP_BORTA'
      Size = 50
      EmptyStrToNull = True
    end
    object TargetsDOSTOVERNOST: TFIBIntegerField
      FieldName = 'DOSTOVERNOST'
    end
    object TargetsRASSTOYNIE: TFIBFloatField
      FieldName = 'RASSTOYNIE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object TargetsAIR_SPEED: TFIBFloatField
      FieldName = 'AIR_SPEED'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
  end
  object Targets_DS: TDataSource
    DataSet = Targets
    OnDataChange = Targets_DSDataChange
    Left = 80
    Top = 8
  end
  object Read_Transaction: TpFIBTransaction
    DefaultDatabase = MonitoringDB
    TimeoutAction = TARollback
    Left = 48
    Top = 272
  end
  object Write_Transaction: TpFIBTransaction
    DefaultDatabase = MonitoringDB
    TimeoutAction = TACommit
    Left = 80
    Top = 272
  end
  object Sessions: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SESSIONS1'
      'SET '
      '    VREMYA_SEANSA = :VREMYA_SEANSA,'
      '    VREMYA_INTERVALA = :VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA = :INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI = :SRZN_SRRAZNOSTI,'
      
        '    OBSCHEE_KOLICHESTVO_SAMOLETOV = :OBSCHEE_KOLICHESTVO_SAMOLET' +
        'OV,'
      '    DOLYA_SAMOLETOV_MONITORING = :DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S = :ZNACHENIE_S,'
      '    NEW_S = :NEW_NEW_S,'
      '    KOL_FILTR = :KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY = :SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8 = :KOL_NAC8,'
      '    KOL_NAC9 = :KOL_NAC9,'
      '    KOL_NAC10 = :KOL_NAC10,'
      '    DOLY_NAC10 = :DOLY_NAC10,'
      '    FLAG_FILTR_SEANS = :FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI = :PROCENT_OTBRAKOVKI,'
      '    EHELON = :EHELON,'
      '    SIGMA_APR = :SIGMA_APR'
      'WHERE'
      '    ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SESSIONS1'
      'WHERE'
      '        ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SESSIONS1('
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      ')'
      'VALUES('
      '    :ID_SESSIONS,'
      '    :VREMYA_SEANSA,'
      '    :VREMYA_INTERVALA,'
      '    :INKREMENT_INTERVALA,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :SRZN_SRRAZNOSTI,'
      '    :OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    :DOLYA_SAMOLETOV_MONITORING,'
      '    :ZNACHENIE_S,'
      '    :NEW_S,'
      '    :KOL_FILTR,'
      '    :SRZNPOGRESHNOSTEY,'
      '    :KOL_NAC8,'
      '    :KOL_NAC9,'
      '    :KOL_NAC10,'
      '    :DOLY_NAC10,'
      '    :FLAG_FILTR_SEANS,'
      '    :PROCENT_OTBRAKOVKI,'
      '    :EHELON,'
      '    :SIGMA_APR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      'FROM'
      '    SESSIONS1 '
      ''
      ' WHERE '
      '        SESSIONS1.ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      'FROM'
      '    SESSIONS1 ')
    AutoUpdateOptions.UpdateTableName = 'SESSIONS'
    AutoUpdateOptions.KeyFields = 'ID_SESSIONS'
    AutoUpdateOptions.GeneratorName = 'SESSIONS_ID_SESSIONS_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    Left = 48
    Top = 48
    object SessionsID_SESSIONS: TFIBIntegerField
      FieldName = 'ID_SESSIONS'
    end
    object SessionsVREMYA_SEANSA: TFIBDateTimeField
      FieldName = 'VREMYA_SEANSA'
    end
    object SessionsVREMYA_INTERVALA: TFIBDateTimeField
      FieldName = 'VREMYA_INTERVALA'
    end
    object SessionsINKREMENT_INTERVALA: TFIBIntegerField
      FieldName = 'INKREMENT_INTERVALA'
    end
    object SessionsKOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object SessionsSRZN_SRRAZNOSTI: TFIBFloatField
      FieldName = 'SRZN_SRRAZNOSTI'
    end
    object SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'OBSCHEE_KOLICHESTVO_SAMOLETOV'
    end
    object SessionsDOLYA_SAMOLETOV_MONITORING: TFIBFloatField
      FieldName = 'DOLYA_SAMOLETOV_MONITORING'
    end
    object SessionsZNACHENIE_S: TFIBFloatField
      FieldName = 'ZNACHENIE_S'
    end
    object SessionsNEW_S: TFIBFloatField
      FieldName = 'NEW_S'
    end
    object SessionsKOL_FILTR: TFIBIntegerField
      FieldName = 'KOL_FILTR'
    end
    object SessionsSRZNPOGRESHNOSTEY: TFIBFloatField
      FieldName = 'SRZNPOGRESHNOSTEY'
    end
    object SessionsKOL_NAC8: TFIBIntegerField
      FieldName = 'KOL_NAC8'
    end
    object SessionsKOL_NAC9: TFIBIntegerField
      FieldName = 'KOL_NAC9'
    end
    object SessionsKOL_NAC10: TFIBIntegerField
      FieldName = 'KOL_NAC10'
    end
    object SessionsDOLY_NAC10: TFIBFloatField
      FieldName = 'DOLY_NAC10'
    end
    object SessionsFLAG_FILTR_SEANS: TFIBStringField
      FieldName = 'FLAG_FILTR_SEANS'
      Size = 40
      EmptyStrToNull = True
    end
    object SessionsPROCENT_OTBRAKOVKI: TFIBFloatField
      FieldName = 'PROCENT_OTBRAKOVKI'
    end
    object SessionsEHELON: TFIBIntegerField
      FieldName = 'EHELON'
    end
    object SessionsSIGMA_APR: TFIBFloatField
      FieldName = 'SIGMA_APR'
    end
  end
  object Sessions_DS: TDataSource
    DataSet = Sessions
    OnDataChange = Sessions_DSDataChange
    Left = 80
    Top = 48
  end
  object TargsInSes: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGSINSES1'
      'SET '
      '    SESSIONS_ID = :SESSIONS_ID,'
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SRRAZNOST = :SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY = :OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM = :OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA = :OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR = :FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY = :NEW_NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM = :NEW_NEW_OCENKA_S_VESOM'
      'WHERE'
      '    ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGSINSES1'
      'WHERE'
      '        ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGSINSES1('
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      ')'
      'VALUES('
      '    :ID_TARGINSES,'
      '    :SESSIONS_ID,'
      '    :IDENTIFIKATOR,'
      '    :SRRAZNOST,'
      '    :OCENKA_POGRESHNOSTEY,'
      '    :OCENKA_S_VESOM,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :OCENKA_NAKLONA_ISOBARA,'
      '    :FLAG_FILTR,'
      '    :NEW_OCENKA_POGRESHNOSTEY,'
      '    :NEW_OCENKA_S_VESOM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      'FROM'
      '    TARGSINSES1 '
      ''
      ' WHERE '
      '        TARGSINSES1.ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      'FROM'
      '    TARGSINSES1 '
      'WHERE'
      '   SESSIONS_ID = ?MAS_ID_SESSIONS')
    AutoUpdateOptions.UpdateTableName = 'TARGSINSES'
    AutoUpdateOptions.KeyFields = 'ID_TARGINSES'
    AutoUpdateOptions.GeneratorName = 'TARGSINSES_ID_TARGINSES_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    DataSource = Sessions_DS
    Left = 48
    Top = 80
    object TargsInSesID_TARGINSES: TFIBIntegerField
      FieldName = 'ID_TARGINSES'
    end
    object TargsInSesSESSIONS_ID: TFIBIntegerField
      FieldName = 'SESSIONS_ID'
    end
    object TargsInSesIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object TargsInSesSRRAZNOST: TFIBFloatField
      FieldName = 'SRRAZNOST'
    end
    object TargsInSesOCENKA_POGRESHNOSTEY: TFIBFloatField
      FieldName = 'OCENKA_POGRESHNOSTEY'
    end
    object TargsInSesOCENKA_S_VESOM: TFIBFloatField
      FieldName = 'OCENKA_S_VESOM'
    end
    object TargsInSesKOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object TargsInSesOCENKA_NAKLONA_ISOBARA: TFIBFloatField
      FieldName = 'OCENKA_NAKLONA_ISOBARA'
    end
    object TargsInSesFLAG_FILTR: TFIBStringField
      FieldName = 'FLAG_FILTR'
      EmptyStrToNull = True
    end
    object TargsInSesNEW_OCENKA_POGRESHNOSTEY: TFIBFloatField
      FieldName = 'NEW_OCENKA_POGRESHNOSTEY'
    end
    object TargsInSesNEW_OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'NEW_OCENKA_S_VESOM'
    end
  end
  object TargsInSes_DS: TDataSource
    DataSet = TargsInSes
    OnDataChange = TargsInSes_DSDataChange
    Left = 80
    Top = 80
  end
  object DeleteTargsInSes: TpFIBQuery
    Transaction = Write_Transaction
    Database = MonitoringDB
    SQL.Strings = (
      'DELETE FROM TARGSINSES1 WHERE SESSIONS_ID=?PAR1')
    Left = 112
    Top = 80
  end
  object Targets_Query: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGETS1'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SHIROTA_STR = :SHIROTA_STR,'
      '    SHIROTA_DEC = :SHIROTA_DEC,'
      '    DOLGOTA_STR = :DOLGOTA_STR,'
      '    DOLGOTA_DEC = :DOLGOTA_DEC,'
      '    BAROMETR_VISOTA = :BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA = :GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI = :VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    REYS = :REYS,'
      '    TIP_BORTA = :TIP_BORTA,'
      '    DOSTOVERNOST = :DOSTOVERNOST,'
      '    RASSTOYNIE = :RASSTOYNIE'
      'WHERE'
      '    ID_TARGET = :OLD_ID_TARGET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGETS1'
      'WHERE'
      '        ID_TARGET = :OLD_ID_TARGET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGETS1('
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      ')'
      'VALUES('
      '    :ID_TARGET,'
      '    :IDENTIFIKATOR,'
      '    :SHIROTA_STR,'
      '    :SHIROTA_DEC,'
      '    :DOLGOTA_STR,'
      '    :DOLGOTA_DEC,'
      '    :BAROMETR_VISOTA,'
      '    :GEOMETR_VISOTA,'
      '    :VREMYA_ZAPISI,'
      '    :RAZNOST_BG_VISOT,'
      '    :REYS,'
      '    :TIP_BORTA,'
      '    :DOSTOVERNOST,'
      '    :RASSTOYNIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS1 '
      ''
      ' WHERE '
      '        TARGETS1.ID_TARGET = :OLD_ID_TARGET'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE,'
      '    AIR_SPEED'
      'FROM'
      '    TARGETS1 ')
    AutoUpdateOptions.UpdateTableName = 'TARGETS'
    AutoUpdateOptions.KeyFields = 'ID_TARGET'
    AutoUpdateOptions.GeneratorName = 'TARGETS_ID_TARGET_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    Left = 112
    Top = 8
    object Targets_QueryID_TARGET: TFIBIntegerField
      FieldName = 'ID_TARGET'
    end
    object Targets_QueryIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets_QuerySHIROTA_STR: TFIBStringField
      FieldName = 'SHIROTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets_QuerySHIROTA_DEC: TFIBFloatField
      FieldName = 'SHIROTA_DEC'
    end
    object Targets_QueryDOLGOTA_STR: TFIBStringField
      FieldName = 'DOLGOTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets_QueryDOLGOTA_DEC: TFIBFloatField
      FieldName = 'DOLGOTA_DEC'
    end
    object Targets_QueryBAROMETR_VISOTA: TFIBFloatField
      FieldName = 'BAROMETR_VISOTA'
    end
    object Targets_QueryGEOMETR_VISOTA: TFIBFloatField
      FieldName = 'GEOMETR_VISOTA'
    end
    object Targets_QueryVREMYA_ZAPISI: TFIBDateTimeField
      FieldName = 'VREMYA_ZAPISI'
    end
    object Targets_QueryRAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
    end
    object Targets_QueryREYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets_QueryTIP_BORTA: TFIBStringField
      FieldName = 'TIP_BORTA'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets_QueryDOSTOVERNOST: TFIBIntegerField
      FieldName = 'DOSTOVERNOST'
    end
    object Targets_QueryRASSTOYNIE: TFIBFloatField
      FieldName = 'RASSTOYNIE'
    end
    object Targets_QueryAIR_SPEED: TFIBFloatField
      FieldName = 'AIR_SPEED'
    end
  end
  object Targets_Query_DS: TDataSource
    DataSet = Targets_Query
    Left = 144
    Top = 8
  end
  object TargsInd: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGSIND1'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SRZNOC = :SRZNOC,'
      '    KOL_SIGMA = :KOL_SIGMA,'
      '    KOL_SEANS = :KOL_SEANS,'
      '    KOL_S = :KOL_S,'
      '    RAZN_VISOT = :RAZN_VISOT,'
      '    MIN_H = :MIN_H,'
      '    MAX_H = :MAX_H,'
      '    PROC_OTBR = :PROC_OTBR,'
      '    RAZNOST_L_H = :RAZNOST_L_H'
      'WHERE'
      '    ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGSIND1'
      'WHERE'
      '        ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGSIND1('
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      ')'
      'VALUES('
      '    :ID_TARGSIND,'
      '    :IDENTIFIKATOR,'
      '    :SRZNOC,'
      '    :KOL_SIGMA,'
      '    :KOL_SEANS,'
      '    :KOL_S,'
      '    :RAZN_VISOT,'
      '    :MIN_H,'
      '    :MAX_H,'
      '    :PROC_OTBR,'
      '    :RAZNOST_L_H'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      'FROM'
      '    TARGSIND1 '
      ''
      ' WHERE '
      '        TARGSIND1.ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      'FROM'
      '    TARGSIND1 '
      'ORDER BY'
      '    IDENTIFIKATOR')
    AutoUpdateOptions.UpdateTableName = 'TARGSIND'
    AutoUpdateOptions.KeyFields = 'ID_TARGSIND'
    AutoUpdateOptions.GeneratorName = 'TARGSIND_ID_TARGSIND_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    Left = 48
    Top = 152
    object TargsIndID_TARGSIND: TFIBIntegerField
      FieldName = 'ID_TARGSIND'
    end
    object TargsIndIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object TargsIndSRZNOC: TFIBFloatField
      FieldName = 'SRZNOC'
    end
    object TargsIndKOL_SIGMA: TFIBIntegerField
      FieldName = 'KOL_SIGMA'
    end
    object TargsIndKOL_SEANS: TFIBSmallIntField
      FieldName = 'KOL_SEANS'
    end
    object TargsIndKOL_S: TFIBIntegerField
      FieldName = 'KOL_S'
    end
    object TargsIndRAZN_VISOT: TFIBFloatField
      FieldName = 'RAZN_VISOT'
    end
    object TargsIndMIN_H: TFIBFloatField
      FieldName = 'MIN_H'
    end
    object TargsIndMAX_H: TFIBFloatField
      FieldName = 'MAX_H'
    end
    object TargsIndPROC_OTBR: TFIBFloatField
      FieldName = 'PROC_OTBR'
    end
    object TargsIndRAZNOST_L_H: TFIBFloatField
      FieldName = 'RAZNOST_L_H'
    end
  end
  object TargsInd_DS: TDataSource
    DataSet = TargsInd
    OnDataChange = TargsInd_DSDataChange
    Left = 80
    Top = 152
  end
  object Statistics: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE STATISTICS1'
      'SET '
      '    TARGSIND_ID = :TARGSIND_ID,'
      '    VREMYA_SOZDANIYA = :VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM = :OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA = :OCENKA_NAKLONA_ISOBARA,'
      '    REYS = :REYS,'
      '    NEW_OCENKA_S_VESOM = :NEW_NEW_OCENKA_S_VESOM,'
      '    SRZNOC = :SRZNOC,'
      '    FL_SEANS = :FL_SEANS,'
      '    FL_SIGMA = :FL_SIGMA,'
      '    BEG_EH = :BEG_EH,'
      '    END_EH = :END_EH'
      'WHERE'
      '    ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    STATISTICS1'
      'WHERE'
      '        ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO STATISTICS1('
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      ')'
      'VALUES('
      '    :ID_STATISTICS,'
      '    :TARGSIND_ID,'
      '    :VREMYA_SOZDANIYA,'
      '    :OCENKA_S_VESOM,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :OCENKA_NAKLONA_ISOBARA,'
      '    :REYS,'
      '    :NEW_OCENKA_S_VESOM,'
      '    :SRZNOC,'
      '    :FL_SEANS,'
      '    :FL_SIGMA,'
      '    :BEG_EH,'
      '    :END_EH'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      'FROM'
      '    STATISTICS1 '
      ''
      ' WHERE '
      '        STATISTICS1.ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      'FROM'
      '    STATISTICS1 '
      'WHERE'
      '   TARGSIND_ID = ?MAS_ID_TARGSIND'
      'ORDER BY'
      '    VREMYA_SOZDANIYA DESC ')
    AutoUpdateOptions.UpdateTableName = '"STATISTICS"'
    AutoUpdateOptions.KeyFields = 'ID_STATISTICS'
    AutoUpdateOptions.GeneratorName = 'STATISTICS_ID_STATISTICS_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    DataSource = TargsInd_DS
    Left = 48
    Top = 184
    object StatisticsID_STATISTICS: TFIBIntegerField
      FieldName = 'ID_STATISTICS'
    end
    object StatisticsTARGSIND_ID: TFIBIntegerField
      FieldName = 'TARGSIND_ID'
    end
    object StatisticsVREMYA_SOZDANIYA: TFIBDateTimeField
      FieldName = 'VREMYA_SOZDANIYA'
    end
    object StatisticsOCENKA_S_VESOM: TFIBFloatField
      FieldName = 'OCENKA_S_VESOM'
    end
    object StatisticsKOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object StatisticsOCENKA_NAKLONA_ISOBARA: TFIBIntegerField
      FieldName = 'OCENKA_NAKLONA_ISOBARA'
    end
    object StatisticsREYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object StatisticsNEW_OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'NEW_OCENKA_S_VESOM'
    end
    object StatisticsSRZNOC: TFIBFloatField
      FieldName = 'SRZNOC'
    end
    object StatisticsFL_SEANS: TFIBStringField
      FieldName = 'FL_SEANS'
      Size = 4
      EmptyStrToNull = True
    end
    object StatisticsFL_SIGMA: TFIBStringField
      FieldName = 'FL_SIGMA'
      Size = 4
      EmptyStrToNull = True
    end
    object StatisticsBEG_EH: TFIBIntegerField
      FieldName = 'BEG_EH'
    end
    object StatisticsEND_EH: TFIBIntegerField
      FieldName = 'END_EH'
    end
  end
  object Statistics_DS: TDataSource
    DataSet = Statistics
    Left = 80
    Top = 184
  end
  object DeleteStatistics: TpFIBQuery
    Transaction = Write_Transaction
    Database = MonitoringDB
    SQL.Strings = (
      'DELETE FROM "STATISTICS1" WHERE ID_STATISTICS=?PAR1')
    Left = 112
    Top = 184
  end
  object Isobara: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ISOBARA1'
      'SET '
      '    ID_ISOBARA = :ID_ISOBARA,'
      '    SESSION_ID = :SESSION_ID,'
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI = :DIAPAZON_VISOTI,'
      '    RASSTOYANIE = :RASSTOYANIE')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ISOBARA1'
      'WHERE'
      '   ID_ISOBARA = :OLD_ID_ISOBARA')
    InsertSQL.Strings = (
      'INSERT INTO ISOBARA1('
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      ')'
      'VALUES('
      '    :ID_ISOBARA,'
      '    :SESSION_ID,'
      '    :IDENTIFIKATOR,'
      '    :RAZNOST_BG_VISOT,'
      '    :DIAPAZON_VISOTI,'
      '    :RASSTOYANIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      'FROM'
      '    ISOBARA1 '
      'WHERE'
      '   ID_ISOBARA = :OLD_ID_ISOBARA')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      'FROM'
      '    ISOBARA1 ')
    AutoUpdateOptions.UpdateTableName = 'ISOBARA'
    AutoUpdateOptions.KeyFields = 'ID_ISOBARA'
    AutoUpdateOptions.GeneratorName = 'ISOBARA_ID_ISOBARA_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    DataSource = TargsInSes_DS
    Left = 48
    Top = 112
    object IsobaraID_ISOBARA: TFIBIntegerField
      FieldName = 'ID_ISOBARA'
    end
    object IsobaraSESSION_ID: TFIBIntegerField
      FieldName = 'SESSION_ID'
    end
    object IsobaraIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object IsobaraRAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
    end
    object IsobaraDIAPAZON_VISOTI: TFIBIntegerField
      FieldName = 'DIAPAZON_VISOTI'
    end
    object IsobaraRASSTOYANIE: TFIBFloatField
      FieldName = 'RASSTOYANIE'
    end
  end
  object Isobara_DS: TDataSource
    DataSet = Isobara
    Left = 80
    Top = 112
  end
  object DeleteIsobara: TpFIBQuery
    Transaction = Write_Transaction
    Database = MonitoringDB
    SQL.Strings = (
      'DELETE FROM ISOBARA1'
      'WHERE'
      '   ID_ISOBARA = :OLD_ID_ISOBARA')
    Left = 112
    Top = 112
  end
  object MoninoringSB: TpFIBDatabase
    Connected = True
    DBName = 'D:\_MonitoringRVSM_\Montor_R\BD\blok 1.GDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=')
    SQLDialect = 3
    Timeout = 0
    UpperOldNames = True
    LibraryName = 'D:\_MonitoringRVSM_\Montor_R\BD\fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 208
    Top = 8
  end
  object Targets1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGETS'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SHIROTA_STR = :SHIROTA_STR,'
      '    SHIROTA_DEC = :SHIROTA_DEC,'
      '    DOLGOTA_STR = :DOLGOTA_STR,'
      '    DOLGOTA_DEC = :DOLGOTA_DEC,'
      '    BAROMETR_VISOTA = :BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA = :GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI = :VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    REYS = :REYS,'
      '    TIP_BORTA = :TIP_BORTA,'
      '    DOSTOVERNOST = :DOSTOVERNOST,'
      '    RASSTOYNIE = :RASSTOYNIE'
      'WHERE'
      '    ID_TARGET = :OLD_ID_TARGET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGETS'
      'WHERE'
      '        ID_TARGET = :OLD_ID_TARGET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGETS('
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      ')'
      'VALUES('
      '    :ID_TARGET,'
      '    :IDENTIFIKATOR,'
      '    :SHIROTA_STR,'
      '    :SHIROTA_DEC,'
      '    :DOLGOTA_STR,'
      '    :DOLGOTA_DEC,'
      '    :BAROMETR_VISOTA,'
      '    :GEOMETR_VISOTA,'
      '    :VREMYA_ZAPISI,'
      '    :RAZNOST_BG_VISOT,'
      '    :REYS,'
      '    :TIP_BORTA,'
      '    :DOSTOVERNOST,'
      '    :RASSTOYNIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS '
      ''
      ' WHERE '
      '        TARGETS.ID_TARGET = :OLD_ID_TARGET'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS ')
    AutoUpdateOptions.UpdateTableName = 'TARGETS'
    AutoUpdateOptions.KeyFields = 'ID_TARGET'
    AutoUpdateOptions.GeneratorName = 'TARGETS_ID_TARGET_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    Left = 280
    Top = 8
    object Targets1ID_TARGET: TFIBIntegerField
      FieldName = 'ID_TARGET'
    end
    object Targets1IDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets1SHIROTA_STR: TFIBStringField
      FieldName = 'SHIROTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets1SHIROTA_DEC: TFIBFloatField
      FieldName = 'SHIROTA_DEC'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object Targets1DOLGOTA_STR: TFIBStringField
      FieldName = 'DOLGOTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets1DOLGOTA_DEC: TFIBFloatField
      FieldName = 'DOLGOTA_DEC'
      DisplayFormat = '#,##0.0000000'
      EditFormat = '0.0000000'
    end
    object Targets1BAROMETR_VISOTA: TFIBFloatField
      FieldName = 'BAROMETR_VISOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object Targets1GEOMETR_VISOTA: TFIBFloatField
      FieldName = 'GEOMETR_VISOTA'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object Targets1VREMYA_ZAPISI: TFIBDateTimeField
      FieldName = 'VREMYA_ZAPISI'
      DisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    end
    object Targets1RAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object Targets1REYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets1TIP_BORTA: TFIBStringField
      FieldName = 'TIP_BORTA'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets1DOSTOVERNOST: TFIBIntegerField
      FieldName = 'DOSTOVERNOST'
    end
    object Targets1RASSTOYNIE: TFIBFloatField
      FieldName = 'RASSTOYNIE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
  end
  object Targets1_DS: TDataSource
    DataSet = Targets1
    OnDataChange = Targets_DSDataChange
    Left = 312
    Top = 8
  end
  object Read_Transaction1: TpFIBTransaction
    Active = True
    DefaultDatabase = MoninoringSB
    TimeoutAction = TARollback
    Left = 280
    Top = 272
  end
  object Write_Transaction1: TpFIBTransaction
    DefaultDatabase = MoninoringSB
    TimeoutAction = TACommit
    TRParams.Strings = (
      '')
    TPBMode = tpbDefault
    Left = 312
    Top = 272
  end
  object Sessions1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SESSIONS'
      'SET '
      '    VREMYA_SEANSA = :VREMYA_SEANSA,'
      '    VREMYA_INTERVALA = :VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA = :INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI = :SRZN_SRRAZNOSTI,'
      
        '    OBSCHEE_KOLICHESTVO_SAMOLETOV = :OBSCHEE_KOLICHESTVO_SAMOLET' +
        'OV,'
      '    DOLYA_SAMOLETOV_MONITORING = :DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S = :ZNACHENIE_S,'
      '    NEW_S = :NEW_NEW_S,'
      '    KOL_FILTR = :KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY = :SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8 = :KOL_NAC8,'
      '    KOL_NAC9 = :KOL_NAC9,'
      '    KOL_NAC10 = :KOL_NAC10,'
      '    DOLY_NAC10 = :DOLY_NAC10,'
      '    FLAG_FILTR_SEANS = :FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI = :PROCENT_OTBRAKOVKI,'
      '    EHELON = :EHELON,'
      '    SIGMA_APR = :SIGMA_APR'
      'WHERE'
      '    ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SESSIONS'
      'WHERE'
      '        ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SESSIONS('
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      ')'
      'VALUES('
      '    :ID_SESSIONS,'
      '    :VREMYA_SEANSA,'
      '    :VREMYA_INTERVALA,'
      '    :INKREMENT_INTERVALA,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :SRZN_SRRAZNOSTI,'
      '    :OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    :DOLYA_SAMOLETOV_MONITORING,'
      '    :ZNACHENIE_S,'
      '    :NEW_S,'
      '    :KOL_FILTR,'
      '    :SRZNPOGRESHNOSTEY,'
      '    :KOL_NAC8,'
      '    :KOL_NAC9,'
      '    :KOL_NAC10,'
      '    :DOLY_NAC10,'
      '    :FLAG_FILTR_SEANS,'
      '    :PROCENT_OTBRAKOVKI,'
      '    :EHELON,'
      '    :SIGMA_APR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      'FROM'
      '    SESSIONS '
      ''
      ' WHERE '
      '        SESSIONS.ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      'FROM'
      '    SESSIONS ')
    AutoUpdateOptions.UpdateTableName = 'SESSIONS'
    AutoUpdateOptions.KeyFields = 'ID_SESSIONS'
    AutoUpdateOptions.GeneratorName = 'SESSIONS_ID_SESSIONS_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    Left = 280
    Top = 48
    object Sessions1ID_SESSIONS: TFIBIntegerField
      FieldName = 'ID_SESSIONS'
    end
    object Sessions1VREMYA_SEANSA: TFIBDateTimeField
      FieldName = 'VREMYA_SEANSA'
    end
    object Sessions1VREMYA_INTERVALA: TFIBDateTimeField
      FieldName = 'VREMYA_INTERVALA'
    end
    object Sessions1INKREMENT_INTERVALA: TFIBIntegerField
      FieldName = 'INKREMENT_INTERVALA'
    end
    object Sessions1KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object Sessions1SRZN_SRRAZNOSTI: TFIBFloatField
      FieldName = 'SRZN_SRRAZNOSTI'
    end
    object Sessions1OBSCHEE_KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'OBSCHEE_KOLICHESTVO_SAMOLETOV'
    end
    object Sessions1DOLYA_SAMOLETOV_MONITORING: TFIBFloatField
      FieldName = 'DOLYA_SAMOLETOV_MONITORING'
    end
    object Sessions1ZNACHENIE_S: TFIBFloatField
      FieldName = 'ZNACHENIE_S'
    end
    object Sessions1NEW_S: TFIBFloatField
      FieldName = 'NEW_S'
    end
    object Sessions1KOL_FILTR: TFIBIntegerField
      FieldName = 'KOL_FILTR'
    end
    object Sessions1SRZNPOGRESHNOSTEY: TFIBFloatField
      FieldName = 'SRZNPOGRESHNOSTEY'
    end
    object Sessions1KOL_NAC8: TFIBIntegerField
      FieldName = 'KOL_NAC8'
    end
    object Sessions1KOL_NAC9: TFIBIntegerField
      FieldName = 'KOL_NAC9'
    end
    object Sessions1KOL_NAC10: TFIBIntegerField
      FieldName = 'KOL_NAC10'
    end
    object Sessions1DOLY_NAC10: TFIBFloatField
      FieldName = 'DOLY_NAC10'
    end
    object Sessions1FLAG_FILTR_SEANS: TFIBStringField
      FieldName = 'FLAG_FILTR_SEANS'
      Size = 40
      EmptyStrToNull = True
    end
    object Sessions1PROCENT_OTBRAKOVKI: TFIBFloatField
      FieldName = 'PROCENT_OTBRAKOVKI'
    end
    object Sessions1EHELON: TFIBIntegerField
      FieldName = 'EHELON'
    end
    object Sessions1SIGMA_APR: TFIBFloatField
      FieldName = 'SIGMA_APR'
    end
  end
  object Sesions1_DS: TDataSource
    DataSet = Sessions1
    OnDataChange = Sessions_DSDataChange
    Left = 312
    Top = 48
  end
  object TargsInSes1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGSINSES'
      'SET '
      '    SESSIONS_ID = :SESSIONS_ID,'
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SRRAZNOST = :SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY = :OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM = :OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA = :OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR = :FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY = :NEW_NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM = :NEW_NEW_OCENKA_S_VESOM'
      'WHERE'
      '    ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGSINSES'
      'WHERE'
      '        ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGSINSES('
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      ')'
      'VALUES('
      '    :ID_TARGINSES,'
      '    :SESSIONS_ID,'
      '    :IDENTIFIKATOR,'
      '    :SRRAZNOST,'
      '    :OCENKA_POGRESHNOSTEY,'
      '    :OCENKA_S_VESOM,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :OCENKA_NAKLONA_ISOBARA,'
      '    :FLAG_FILTR,'
      '    :NEW_OCENKA_POGRESHNOSTEY,'
      '    :NEW_OCENKA_S_VESOM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      'FROM'
      '    TARGSINSES '
      ''
      ' WHERE '
      '        TARGSINSES.ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      'FROM'
      '    TARGSINSES '
      'WHERE'
      '   SESSIONS_ID = ?MAS_ID_SESSIONS')
    AutoUpdateOptions.UpdateTableName = 'TARGSINSES'
    AutoUpdateOptions.KeyFields = 'ID_TARGINSES'
    AutoUpdateOptions.GeneratorName = 'TARGSINSES_ID_TARGINSES_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    DataSource = Sesions1_DS
    Left = 280
    Top = 80
    object TargsInSes1ID_TARGINSES: TFIBIntegerField
      FieldName = 'ID_TARGINSES'
    end
    object TargsInSes1SESSIONS_ID: TFIBIntegerField
      FieldName = 'SESSIONS_ID'
    end
    object TargsInSes1IDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object TargsInSes1SRRAZNOST: TFIBFloatField
      FieldName = 'SRRAZNOST'
    end
    object TargsInSes1OCENKA_POGRESHNOSTEY: TFIBFloatField
      FieldName = 'OCENKA_POGRESHNOSTEY'
    end
    object TargsInSes1OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'OCENKA_S_VESOM'
    end
    object TargsInSes1KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object TargsInSes1OCENKA_NAKLONA_ISOBARA: TFIBFloatField
      FieldName = 'OCENKA_NAKLONA_ISOBARA'
    end
    object TargsInSes1FLAG_FILTR: TFIBStringField
      FieldName = 'FLAG_FILTR'
      EmptyStrToNull = True
    end
    object TargsInSes1NEW_OCENKA_POGRESHNOSTEY: TFIBFloatField
      FieldName = 'NEW_OCENKA_POGRESHNOSTEY'
    end
    object TargsInSes1NEW_OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'NEW_OCENKA_S_VESOM'
    end
  end
  object TargInSes1_DS: TDataSource
    DataSet = TargsInSes1
    OnDataChange = TargsInSes_DSDataChange
    Left = 312
    Top = 80
  end
  object DeleteTargsInSes1: TpFIBQuery
    Transaction = Write_Transaction1
    Database = MoninoringSB
    SQL.Strings = (
      'DELETE FROM TARGSINSES WHERE SESSIONS_ID=?PAR1')
    Left = 344
    Top = 80
  end
  object Targets1_Query: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGETS'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SHIROTA_STR = :SHIROTA_STR,'
      '    SHIROTA_DEC = :SHIROTA_DEC,'
      '    DOLGOTA_STR = :DOLGOTA_STR,'
      '    DOLGOTA_DEC = :DOLGOTA_DEC,'
      '    BAROMETR_VISOTA = :BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA = :GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI = :VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    REYS = :REYS,'
      '    TIP_BORTA = :TIP_BORTA,'
      '    DOSTOVERNOST = :DOSTOVERNOST,'
      '    RASSTOYNIE = :RASSTOYNIE'
      'WHERE'
      '    ID_TARGET = :OLD_ID_TARGET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGETS'
      'WHERE'
      '        ID_TARGET = :OLD_ID_TARGET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGETS('
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      ')'
      'VALUES('
      '    :ID_TARGET,'
      '    :IDENTIFIKATOR,'
      '    :SHIROTA_STR,'
      '    :SHIROTA_DEC,'
      '    :DOLGOTA_STR,'
      '    :DOLGOTA_DEC,'
      '    :BAROMETR_VISOTA,'
      '    :GEOMETR_VISOTA,'
      '    :VREMYA_ZAPISI,'
      '    :RAZNOST_BG_VISOT,'
      '    :REYS,'
      '    :TIP_BORTA,'
      '    :DOSTOVERNOST,'
      '    :RASSTOYNIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS '
      ''
      ' WHERE '
      '        TARGETS.ID_TARGET = :OLD_ID_TARGET'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS ')
    AutoUpdateOptions.UpdateTableName = 'TARGETS'
    AutoUpdateOptions.KeyFields = 'ID_TARGET'
    AutoUpdateOptions.GeneratorName = 'TARGETS_ID_TARGET_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    Left = 344
    Top = 8
    object Targets1_QueryID_TARGET: TFIBIntegerField
      FieldName = 'ID_TARGET'
    end
    object Targets1_QueryIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets1_QuerySHIROTA_STR: TFIBStringField
      FieldName = 'SHIROTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets1_QuerySHIROTA_DEC: TFIBFloatField
      FieldName = 'SHIROTA_DEC'
    end
    object Targets1_QueryDOLGOTA_STR: TFIBStringField
      FieldName = 'DOLGOTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets1_QueryDOLGOTA_DEC: TFIBFloatField
      FieldName = 'DOLGOTA_DEC'
    end
    object Targets1_QueryBAROMETR_VISOTA: TFIBFloatField
      FieldName = 'BAROMETR_VISOTA'
    end
    object Targets1_QueryGEOMETR_VISOTA: TFIBFloatField
      FieldName = 'GEOMETR_VISOTA'
    end
    object Targets1_QueryVREMYA_ZAPISI: TFIBDateTimeField
      FieldName = 'VREMYA_ZAPISI'
    end
    object Targets1_QueryRAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
    end
    object Targets1_QueryREYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets1_QueryTIP_BORTA: TFIBStringField
      FieldName = 'TIP_BORTA'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets1_QueryDOSTOVERNOST: TFIBIntegerField
      FieldName = 'DOSTOVERNOST'
    end
    object Targets1_QueryRASSTOYNIE: TFIBFloatField
      FieldName = 'RASSTOYNIE'
    end
  end
  object Targets1_Query_DS: TDataSource
    DataSet = Targets1_Query
    Left = 376
    Top = 8
  end
  object TargsInd1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGSIND'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SRZNOC = :SRZNOC,'
      '    KOL_SIGMA = :KOL_SIGMA,'
      '    KOL_SEANS = :KOL_SEANS,'
      '    KOL_S = :KOL_S,'
      '    RAZN_VISOT = :RAZN_VISOT,'
      '    MIN_H = :MIN_H,'
      '    MAX_H = :MAX_H,'
      '    PROC_OTBR = :PROC_OTBR,'
      '    RAZNOST_L_H = :RAZNOST_L_H'
      'WHERE'
      '    ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGSIND'
      'WHERE'
      '        ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGSIND('
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      ')'
      'VALUES('
      '    :ID_TARGSIND,'
      '    :IDENTIFIKATOR,'
      '    :SRZNOC,'
      '    :KOL_SIGMA,'
      '    :KOL_SEANS,'
      '    :KOL_S,'
      '    :RAZN_VISOT,'
      '    :MIN_H,'
      '    :MAX_H,'
      '    :PROC_OTBR,'
      '    :RAZNOST_L_H'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      'FROM'
      '    TARGSIND '
      ''
      ' WHERE '
      '        TARGSIND.ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      'FROM'
      '    TARGSIND '
      'ORDER BY'
      '    IDENTIFIKATOR')
    AutoUpdateOptions.UpdateTableName = 'TARGSIND'
    AutoUpdateOptions.KeyFields = 'ID_TARGSIND'
    AutoUpdateOptions.GeneratorName = 'TARGSIND_ID_TARGSIND_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    Left = 280
    Top = 152
    object TargsInd1ID_TARGSIND: TFIBIntegerField
      FieldName = 'ID_TARGSIND'
    end
    object TargsInd1IDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object TargsInd1SRZNOC: TFIBFloatField
      FieldName = 'SRZNOC'
    end
    object TargsInd1KOL_SIGMA: TFIBIntegerField
      FieldName = 'KOL_SIGMA'
    end
    object TargsInd1KOL_SEANS: TFIBSmallIntField
      FieldName = 'KOL_SEANS'
    end
    object TargsInd1KOL_S: TFIBIntegerField
      FieldName = 'KOL_S'
    end
    object TargsInd1RAZN_VISOT: TFIBFloatField
      FieldName = 'RAZN_VISOT'
    end
    object TargsInd1MIN_H: TFIBFloatField
      FieldName = 'MIN_H'
    end
    object TargsInd1MAX_H: TFIBFloatField
      FieldName = 'MAX_H'
    end
    object TargsInd1PROC_OTBR: TFIBFloatField
      FieldName = 'PROC_OTBR'
    end
    object TargsInd1RAZNOST_L_H: TFIBFloatField
      FieldName = 'RAZNOST_L_H'
    end
  end
  object TargsInd1_DS: TDataSource
    DataSet = TargsInd1
    OnDataChange = TargsInd_DSDataChange
    Left = 312
    Top = 152
  end
  object Statistics1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE "STATISTICS"'
      'SET '
      '    TARGSIND_ID = :TARGSIND_ID,'
      '    VREMYA_SOZDANIYA = :VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM = :OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA = :OCENKA_NAKLONA_ISOBARA,'
      '    REYS = :REYS,'
      '    NEW_OCENKA_S_VESOM = :NEW_NEW_OCENKA_S_VESOM,'
      '    SRZNOC = :SRZNOC,'
      '    FL_SEANS = :FL_SEANS,'
      '    FL_SIGMA = :FL_SIGMA,'
      '    BEG_EH = :BEG_EH,'
      '    END_EH = :END_EH'
      'WHERE'
      '    ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    "STATISTICS"'
      'WHERE'
      '        ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO "STATISTICS"('
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      ')'
      'VALUES('
      '    :ID_STATISTICS,'
      '    :TARGSIND_ID,'
      '    :VREMYA_SOZDANIYA,'
      '    :OCENKA_S_VESOM,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :OCENKA_NAKLONA_ISOBARA,'
      '    :REYS,'
      '    :NEW_OCENKA_S_VESOM,'
      '    :SRZNOC,'
      '    :FL_SEANS,'
      '    :FL_SIGMA,'
      '    :BEG_EH,'
      '    :END_EH'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      'FROM'
      '    "STATISTICS" '
      'WHERE( '
      '   TARGSIND_ID = ?MAS_ID_TARGSIND'
      '     ) and (     "STATISTICS".ID_STATISTICS = :OLD_ID_STATISTICS'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      'FROM'
      '    "STATISTICS" '
      'WHERE'
      '   TARGSIND_ID = ?MAS_ID_TARGSIND'
      'ORDER BY'
      '    VREMYA_SOZDANIYA DESC ')
    AutoUpdateOptions.UpdateTableName = '"STATISTICS"'
    AutoUpdateOptions.KeyFields = 'ID_STATISTICS'
    AutoUpdateOptions.GeneratorName = 'STATISTICS_ID_STATISTICS_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    DataSource = TargsInd1_DS
    Left = 280
    Top = 184
    object Statistics1ID_STATISTICS: TFIBIntegerField
      FieldName = 'ID_STATISTICS'
    end
    object Statistics1TARGSIND_ID: TFIBIntegerField
      FieldName = 'TARGSIND_ID'
    end
    object Statistics1VREMYA_SOZDANIYA: TFIBDateTimeField
      FieldName = 'VREMYA_SOZDANIYA'
    end
    object Statistics1OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'OCENKA_S_VESOM'
    end
    object Statistics1KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object Statistics1OCENKA_NAKLONA_ISOBARA: TFIBIntegerField
      FieldName = 'OCENKA_NAKLONA_ISOBARA'
    end
    object Statistics1REYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Statistics1NEW_OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'NEW_OCENKA_S_VESOM'
    end
    object Statistics1SRZNOC: TFIBFloatField
      FieldName = 'SRZNOC'
    end
    object Statistics1FL_SEANS: TFIBStringField
      FieldName = 'FL_SEANS'
      Size = 4
      EmptyStrToNull = True
    end
    object Statistics1FL_SIGMA: TFIBStringField
      FieldName = 'FL_SIGMA'
      Size = 4
      EmptyStrToNull = True
    end
    object Statistics1BEG_EH: TFIBIntegerField
      FieldName = 'BEG_EH'
    end
    object Statistics1END_EH: TFIBIntegerField
      FieldName = 'END_EH'
    end
  end
  object Statistics1_DS: TDataSource
    DataSet = Statistics1
    Left = 312
    Top = 184
  end
  object DeleteStatistics1: TpFIBQuery
    Transaction = Write_Transaction1
    Database = MoninoringSB
    SQL.Strings = (
      'DELETE FROM "STATISTICS"'
      'WHERE'
      '    ID_STATISTICS=:ID_STATISTICS')
    Left = 344
    Top = 184
  end
  object Isobara1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ISOBARA'
      'SET '
      '    ID_ISOBARA = :ID_ISOBARA,'
      '    SESSION_ID = :SESSION_ID,'
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI = :DIAPAZON_VISOTI,'
      '    RASSTOYANIE = :RASSTOYANIE'
      'WHERE'
      '    ID_ISOBARA= :OLD_ID_ISOBARA')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ISOBARA'
      'WHERE'
      '        ID_ISOBARA=:OLD_ID_ISOBARA')
    InsertSQL.Strings = (
      'INSERT INTO ISOBARA('
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      ')'
      'VALUES('
      '    :ID_ISOBARA,'
      '    :SESSION_ID,'
      '    :IDENTIFIKATOR,'
      '    :RAZNOST_BG_VISOT,'
      '    :DIAPAZON_VISOTI,'
      '    :RASSTOYANIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      'FROM'
      '    ISOBARA ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      'FROM'
      '    ISOBARA ')
    AutoUpdateOptions.UpdateTableName = 'ISOBARA'
    AutoUpdateOptions.KeyFields = 'ID_ISOBARA'
    AutoUpdateOptions.GeneratorName = 'ISOBARA_ID_ISOBARA_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    DataSource = TargInSes1_DS
    Left = 280
    Top = 112
    object Isobara1ID_ISOBARA: TFIBIntegerField
      FieldName = 'ID_ISOBARA'
    end
    object Isobara1SESSION_ID: TFIBIntegerField
      FieldName = 'SESSION_ID'
    end
    object Isobara1IDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object Isobara1RAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
    end
    object Isobara1DIAPAZON_VISOTI: TFIBIntegerField
      FieldName = 'DIAPAZON_VISOTI'
    end
    object Isobara1RASSTOYANIE: TFIBFloatField
      FieldName = 'RASSTOYANIE'
    end
  end
  object Isobara1_DS: TDataSource
    DataSet = Isobara1
    Left = 312
    Top = 112
  end
  object DeleteIsobara1: TpFIBQuery
    Transaction = Write_Transaction1
    Database = MoninoringSB
    SQL.Strings = (
      'DELETE FROM ISOBARA WHERE SESSIONS_ID=?PAR1')
    Left = 344
    Top = 112
  end
  object Targets2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGETS'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SHIROTA_STR = :SHIROTA_STR,'
      '    SHIROTA_DEC = :SHIROTA_DEC,'
      '    DOLGOTA_STR = :DOLGOTA_STR,'
      '    DOLGOTA_DEC = :DOLGOTA_DEC,'
      '    BAROMETR_VISOTA = :BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA = :GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI = :VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    REYS = :REYS,'
      '    TIP_BORTA = :TIP_BORTA,'
      '    DOSTOVERNOST = :DOSTOVERNOST,'
      '    RASSTOYNIE = :RASSTOYNIE'
      'WHERE'
      '    ID_TARGET = :OLD_ID_TARGET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGETS'
      'WHERE'
      '        ID_TARGET = :OLD_ID_TARGET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGETS('
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      ')'
      'VALUES('
      '    :ID_TARGET,'
      '    :IDENTIFIKATOR,'
      '    :SHIROTA_STR,'
      '    :SHIROTA_DEC,'
      '    :DOLGOTA_STR,'
      '    :DOLGOTA_DEC,'
      '    :BAROMETR_VISOTA,'
      '    :GEOMETR_VISOTA,'
      '    :VREMYA_ZAPISI,'
      '    :RAZNOST_BG_VISOT,'
      '    :REYS,'
      '    :TIP_BORTA,'
      '    :DOSTOVERNOST,'
      '    :RASSTOYNIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS '
      ''
      ' WHERE '
      '        TARGETS.ID_TARGET = :OLD_ID_TARGET'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS ')
    AutoUpdateOptions.UpdateTableName = 'TARGETS'
    AutoUpdateOptions.KeyFields = 'ID_TARGET'
    AutoUpdateOptions.GeneratorName = 'TARGETS_ID_TARGET_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    Left = 656
    Top = 8
    object Targets2ID_TARGET: TFIBIntegerField
      FieldName = 'ID_TARGET'
    end
    object Targets2IDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets2SHIROTA_STR: TFIBStringField
      FieldName = 'SHIROTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets2SHIROTA_DEC: TFIBFloatField
      FieldName = 'SHIROTA_DEC'
    end
    object Targets2DOLGOTA_STR: TFIBStringField
      FieldName = 'DOLGOTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets2DOLGOTA_DEC: TFIBFloatField
      FieldName = 'DOLGOTA_DEC'
    end
    object Targets2BAROMETR_VISOTA: TFIBFloatField
      FieldName = 'BAROMETR_VISOTA'
    end
    object Targets2GEOMETR_VISOTA: TFIBFloatField
      FieldName = 'GEOMETR_VISOTA'
    end
    object Targets2VREMYA_ZAPISI: TFIBDateTimeField
      FieldName = 'VREMYA_ZAPISI'
    end
    object Targets2RAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
    end
    object Targets2REYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets2TIP_BORTA: TFIBStringField
      FieldName = 'TIP_BORTA'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets2DOSTOVERNOST: TFIBIntegerField
      FieldName = 'DOSTOVERNOST'
    end
    object Targets2RASSTOYNIE: TFIBFloatField
      FieldName = 'RASSTOYNIE'
    end
  end
  object Targets2_DS: TDataSource
    DataSet = Targets2
    OnDataChange = Targets_DSDataChange
    Left = 688
    Top = 8
  end
  object Read_Transaction2: TpFIBTransaction
    Active = True
    DefaultDatabase = MonitoringTD
    TimeoutAction = TARollback
    Left = 656
    Top = 264
  end
  object Write_Transaction2: TpFIBTransaction
    DefaultDatabase = MonitoringTD
    TimeoutAction = TACommit
    TRParams.Strings = (
      '')
    TPBMode = tpbDefault
    Left = 688
    Top = 264
  end
  object Sessions2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE SESSIONS'
      'SET '
      '    VREMYA_SEANSA = :VREMYA_SEANSA,'
      '    VREMYA_INTERVALA = :VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA = :INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI = :SRZN_SRRAZNOSTI,'
      
        '    OBSCHEE_KOLICHESTVO_SAMOLETOV = :OBSCHEE_KOLICHESTVO_SAMOLET' +
        'OV,'
      '    DOLYA_SAMOLETOV_MONITORING = :DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S = :ZNACHENIE_S,'
      '    NEW_S = :NEW_NEW_S,'
      '    KOL_FILTR = :KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY = :SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8 = :KOL_NAC8,'
      '    KOL_NAC9 = :KOL_NAC9,'
      '    KOL_NAC10 = :KOL_NAC10,'
      '    DOLY_NAC10 = :DOLY_NAC10,'
      '    FLAG_FILTR_SEANS = :FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI = :PROCENT_OTBRAKOVKI,'
      '    EHELON = :EHELON,'
      '    SIGMA_APR = :SIGMA_APR'
      'WHERE'
      '    ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    SESSIONS'
      'WHERE'
      '        ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO SESSIONS('
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      ')'
      'VALUES('
      '    :ID_SESSIONS,'
      '    :VREMYA_SEANSA,'
      '    :VREMYA_INTERVALA,'
      '    :INKREMENT_INTERVALA,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :SRZN_SRRAZNOSTI,'
      '    :OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    :DOLYA_SAMOLETOV_MONITORING,'
      '    :ZNACHENIE_S,'
      '    :NEW_S,'
      '    :KOL_FILTR,'
      '    :SRZNPOGRESHNOSTEY,'
      '    :KOL_NAC8,'
      '    :KOL_NAC9,'
      '    :KOL_NAC10,'
      '    :DOLY_NAC10,'
      '    :FLAG_FILTR_SEANS,'
      '    :PROCENT_OTBRAKOVKI,'
      '    :EHELON,'
      '    :SIGMA_APR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      'FROM'
      '    SESSIONS '
      ''
      ' WHERE '
      '        SESSIONS.ID_SESSIONS = :OLD_ID_SESSIONS'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_SESSIONS,'
      '    VREMYA_SEANSA,'
      '    VREMYA_INTERVALA,'
      '    INKREMENT_INTERVALA,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    SRZN_SRRAZNOSTI,'
      '    OBSCHEE_KOLICHESTVO_SAMOLETOV,'
      '    DOLYA_SAMOLETOV_MONITORING,'
      '    ZNACHENIE_S,'
      '    NEW_S,'
      '    KOL_FILTR,'
      '    SRZNPOGRESHNOSTEY,'
      '    KOL_NAC8,'
      '    KOL_NAC9,'
      '    KOL_NAC10,'
      '    DOLY_NAC10,'
      '    FLAG_FILTR_SEANS,'
      '    PROCENT_OTBRAKOVKI,'
      '    EHELON,'
      '    SIGMA_APR'
      'FROM'
      '    SESSIONS ')
    AutoUpdateOptions.UpdateTableName = 'SESSIONS'
    AutoUpdateOptions.KeyFields = 'ID_SESSIONS'
    AutoUpdateOptions.GeneratorName = 'SESSIONS_ID_SESSIONS_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    Left = 656
    Top = 48
    object Sessions2ID_SESSIONS: TFIBIntegerField
      FieldName = 'ID_SESSIONS'
    end
    object Sessions2VREMYA_SEANSA: TFIBDateTimeField
      FieldName = 'VREMYA_SEANSA'
    end
    object Sessions2VREMYA_INTERVALA: TFIBDateTimeField
      FieldName = 'VREMYA_INTERVALA'
    end
    object Sessions2INKREMENT_INTERVALA: TFIBIntegerField
      FieldName = 'INKREMENT_INTERVALA'
    end
    object Sessions2KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object Sessions2SRZN_SRRAZNOSTI: TFIBFloatField
      FieldName = 'SRZN_SRRAZNOSTI'
    end
    object Sessions2OBSCHEE_KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'OBSCHEE_KOLICHESTVO_SAMOLETOV'
    end
    object Sessions2DOLYA_SAMOLETOV_MONITORING: TFIBFloatField
      FieldName = 'DOLYA_SAMOLETOV_MONITORING'
    end
    object Sessions2ZNACHENIE_S: TFIBFloatField
      FieldName = 'ZNACHENIE_S'
    end
    object Sessions2NEW_S: TFIBFloatField
      FieldName = 'NEW_S'
    end
    object Sessions2KOL_FILTR: TFIBIntegerField
      FieldName = 'KOL_FILTR'
    end
    object Sessions2SRZNPOGRESHNOSTEY: TFIBFloatField
      FieldName = 'SRZNPOGRESHNOSTEY'
    end
    object Sessions2KOL_NAC8: TFIBIntegerField
      FieldName = 'KOL_NAC8'
    end
    object Sessions2KOL_NAC9: TFIBIntegerField
      FieldName = 'KOL_NAC9'
    end
    object Sessions2KOL_NAC10: TFIBIntegerField
      FieldName = 'KOL_NAC10'
    end
    object Sessions2DOLY_NAC10: TFIBFloatField
      FieldName = 'DOLY_NAC10'
    end
    object Sessions2FLAG_FILTR_SEANS: TFIBStringField
      FieldName = 'FLAG_FILTR_SEANS'
      Size = 40
      EmptyStrToNull = True
    end
    object Sessions2PROCENT_OTBRAKOVKI: TFIBFloatField
      FieldName = 'PROCENT_OTBRAKOVKI'
    end
    object Sessions2EHELON: TFIBIntegerField
      FieldName = 'EHELON'
    end
    object Sessions2SIGMA_APR: TFIBFloatField
      FieldName = 'SIGMA_APR'
    end
  end
  object Sesions2_DS: TDataSource
    DataSet = Sessions2
    OnDataChange = Sessions_DSDataChange
    Left = 688
    Top = 48
  end
  object TargsInSes2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGSINSES'
      'SET '
      '    SESSIONS_ID = :SESSIONS_ID,'
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SRRAZNOST = :SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY = :OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM = :OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA = :OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR = :FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY = :NEW_NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM = :NEW_NEW_OCENKA_S_VESOM'
      'WHERE'
      '    ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGSINSES'
      'WHERE'
      '        ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGSINSES('
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      ')'
      'VALUES('
      '    :ID_TARGINSES,'
      '    :SESSIONS_ID,'
      '    :IDENTIFIKATOR,'
      '    :SRRAZNOST,'
      '    :OCENKA_POGRESHNOSTEY,'
      '    :OCENKA_S_VESOM,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :OCENKA_NAKLONA_ISOBARA,'
      '    :FLAG_FILTR,'
      '    :NEW_OCENKA_POGRESHNOSTEY,'
      '    :NEW_OCENKA_S_VESOM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      'FROM'
      '    TARGSINSES '
      ''
      ' WHERE '
      '        TARGSINSES.ID_TARGINSES = :OLD_ID_TARGINSES'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGINSES,'
      '    SESSIONS_ID,'
      '    IDENTIFIKATOR,'
      '    SRRAZNOST,'
      '    OCENKA_POGRESHNOSTEY,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    FLAG_FILTR,'
      '    NEW_OCENKA_POGRESHNOSTEY,'
      '    NEW_OCENKA_S_VESOM'
      'FROM'
      '    TARGSINSES '
      'WHERE'
      '   SESSIONS_ID = ?MAS_ID_SESSIONS')
    AutoUpdateOptions.UpdateTableName = 'TARGSINSES'
    AutoUpdateOptions.KeyFields = 'ID_TARGINSES'
    AutoUpdateOptions.GeneratorName = 'TARGSINSES_ID_TARGINSES_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    DataSource = Sesions2_DS
    Left = 656
    Top = 80
    object FIBIntegerField12: TFIBIntegerField
      FieldName = 'ID_TARGINSES'
    end
    object FIBIntegerField13: TFIBIntegerField
      FieldName = 'SESSIONS_ID'
    end
    object FIBStringField7: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object FIBFloatField15: TFIBFloatField
      FieldName = 'SRRAZNOST'
    end
    object FIBFloatField16: TFIBFloatField
      FieldName = 'OCENKA_POGRESHNOSTEY'
    end
    object FIBFloatField17: TFIBFloatField
      FieldName = 'OCENKA_S_VESOM'
    end
    object FIBIntegerField14: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object FIBFloatField18: TFIBFloatField
      FieldName = 'OCENKA_NAKLONA_ISOBARA'
    end
    object FIBStringField8: TFIBStringField
      FieldName = 'FLAG_FILTR'
      EmptyStrToNull = True
    end
    object FIBFloatField19: TFIBFloatField
      FieldName = 'NEW_OCENKA_POGRESHNOSTEY'
    end
    object FIBFloatField20: TFIBFloatField
      FieldName = 'NEW_OCENKA_S_VESOM'
    end
  end
  object TargsInSes2_DS: TDataSource
    DataSet = TargsInSes2
    OnDataChange = TargsInSes_DSDataChange
    Left = 688
    Top = 80
  end
  object DeleteTargsInSes2: TpFIBQuery
    Transaction = Write_Transaction2
    Database = MonitoringTD
    SQL.Strings = (
      'DELETE FROM TARGSINSES'
      'WHERE'
      '    ID_TARGINSES=:ID_TARGINSES')
    Left = 720
    Top = 80
  end
  object Targets2_Query: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGETS'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SHIROTA_STR = :SHIROTA_STR,'
      '    SHIROTA_DEC = :SHIROTA_DEC,'
      '    DOLGOTA_STR = :DOLGOTA_STR,'
      '    DOLGOTA_DEC = :DOLGOTA_DEC,'
      '    BAROMETR_VISOTA = :BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA = :GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI = :VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    REYS = :REYS,'
      '    TIP_BORTA = :TIP_BORTA,'
      '    DOSTOVERNOST = :DOSTOVERNOST,'
      '    RASSTOYNIE = :RASSTOYNIE'
      'WHERE'
      '    ID_TARGET = :OLD_ID_TARGET'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGETS'
      'WHERE'
      '        ID_TARGET = :OLD_ID_TARGET'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGETS('
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      ')'
      'VALUES('
      '    :ID_TARGET,'
      '    :IDENTIFIKATOR,'
      '    :SHIROTA_STR,'
      '    :SHIROTA_DEC,'
      '    :DOLGOTA_STR,'
      '    :DOLGOTA_DEC,'
      '    :BAROMETR_VISOTA,'
      '    :GEOMETR_VISOTA,'
      '    :VREMYA_ZAPISI,'
      '    :RAZNOST_BG_VISOT,'
      '    :REYS,'
      '    :TIP_BORTA,'
      '    :DOSTOVERNOST,'
      '    :RASSTOYNIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS '
      ''
      ' WHERE '
      '        TARGETS.ID_TARGET = :OLD_ID_TARGET'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGET,'
      '    IDENTIFIKATOR,'
      '    SHIROTA_STR,'
      '    SHIROTA_DEC,'
      '    DOLGOTA_STR,'
      '    DOLGOTA_DEC,'
      '    BAROMETR_VISOTA,'
      '    GEOMETR_VISOTA,'
      '    VREMYA_ZAPISI,'
      '    RAZNOST_BG_VISOT,'
      '    REYS,'
      '    TIP_BORTA,'
      '    DOSTOVERNOST,'
      '    RASSTOYNIE'
      'FROM'
      '    TARGETS ')
    AutoUpdateOptions.UpdateTableName = 'TARGETS'
    AutoUpdateOptions.KeyFields = 'ID_TARGET'
    AutoUpdateOptions.GeneratorName = 'TARGETS_ID_TARGET_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    Left = 720
    Top = 8
    object Targets2_QueryID_TARGET: TFIBIntegerField
      FieldName = 'ID_TARGET'
    end
    object Targets2_QueryIDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets2_QuerySHIROTA_STR: TFIBStringField
      FieldName = 'SHIROTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets2_QuerySHIROTA_DEC: TFIBFloatField
      FieldName = 'SHIROTA_DEC'
    end
    object Targets2_QueryDOLGOTA_STR: TFIBStringField
      FieldName = 'DOLGOTA_STR'
      Size = 10
      EmptyStrToNull = True
    end
    object Targets2_QueryDOLGOTA_DEC: TFIBFloatField
      FieldName = 'DOLGOTA_DEC'
    end
    object Targets2_QueryBAROMETR_VISOTA: TFIBFloatField
      FieldName = 'BAROMETR_VISOTA'
    end
    object Targets2_QueryGEOMETR_VISOTA: TFIBFloatField
      FieldName = 'GEOMETR_VISOTA'
    end
    object Targets2_QueryVREMYA_ZAPISI: TFIBDateTimeField
      FieldName = 'VREMYA_ZAPISI'
    end
    object Targets2_QueryRAZNOST_BG_VISOT: TFIBFloatField
      FieldName = 'RAZNOST_BG_VISOT'
    end
    object Targets2_QueryREYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets2_QueryTIP_BORTA: TFIBStringField
      FieldName = 'TIP_BORTA'
      Size = 50
      EmptyStrToNull = True
    end
    object Targets2_QueryDOSTOVERNOST: TFIBIntegerField
      FieldName = 'DOSTOVERNOST'
    end
    object Targets2_QueryRASSTOYNIE: TFIBFloatField
      FieldName = 'RASSTOYNIE'
    end
  end
  object Targets2_Query_DS: TDataSource
    DataSet = Targets2_Query
    Left = 752
    Top = 8
  end
  object TargsInd2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TARGSIND'
      'SET '
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    SRZNOC = :SRZNOC,'
      '    KOL_SIGMA = :KOL_SIGMA,'
      '    KOL_SEANS = :KOL_SEANS,'
      '    KOL_S = :KOL_S,'
      '    RAZN_VISOT = :RAZN_VISOT,'
      '    MIN_H = :MIN_H,'
      '    MAX_H = :MAX_H,'
      '    PROC_OTBR = :PROC_OTBR,'
      '    RAZNOST_L_H = :RAZNOST_L_H'
      'WHERE'
      '    ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TARGSIND'
      'WHERE'
      '        ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TARGSIND('
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      ')'
      'VALUES('
      '    :ID_TARGSIND,'
      '    :IDENTIFIKATOR,'
      '    :SRZNOC,'
      '    :KOL_SIGMA,'
      '    :KOL_SEANS,'
      '    :KOL_S,'
      '    :RAZN_VISOT,'
      '    :MIN_H,'
      '    :MAX_H,'
      '    :PROC_OTBR,'
      '    :RAZNOST_L_H'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      'FROM'
      '    TARGSIND '
      ''
      ' WHERE '
      '        TARGSIND.ID_TARGSIND = :OLD_ID_TARGSIND'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_TARGSIND,'
      '    IDENTIFIKATOR,'
      '    SRZNOC,'
      '    KOL_SIGMA,'
      '    KOL_SEANS,'
      '    KOL_S,'
      '    RAZN_VISOT,'
      '    MIN_H,'
      '    MAX_H,'
      '    PROC_OTBR,'
      '    RAZNOST_L_H'
      'FROM'
      '    TARGSIND '
      'ORDER BY'
      '    IDENTIFIKATOR')
    AutoUpdateOptions.UpdateTableName = 'TARGSIND'
    AutoUpdateOptions.KeyFields = 'ID_TARGSIND'
    AutoUpdateOptions.GeneratorName = 'TARGSIND_ID_TARGSIND_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    Left = 656
    Top = 152
    object TargsInd2ID_TARGSIND: TFIBIntegerField
      FieldName = 'ID_TARGSIND'
    end
    object TargsInd2IDENTIFIKATOR: TFIBStringField
      FieldName = 'IDENTIFIKATOR'
      Size = 50
      EmptyStrToNull = True
    end
    object TargsInd2SRZNOC: TFIBFloatField
      FieldName = 'SRZNOC'
    end
    object TargsInd2KOL_SIGMA: TFIBIntegerField
      FieldName = 'KOL_SIGMA'
    end
    object TargsInd2KOL_SEANS: TFIBSmallIntField
      FieldName = 'KOL_SEANS'
    end
    object TargsInd2KOL_S: TFIBIntegerField
      FieldName = 'KOL_S'
    end
    object TargsInd2RAZN_VISOT: TFIBFloatField
      FieldName = 'RAZN_VISOT'
    end
    object TargsInd2MIN_H: TFIBFloatField
      FieldName = 'MIN_H'
    end
    object TargsInd2MAX_H: TFIBFloatField
      FieldName = 'MAX_H'
    end
    object TargsInd2PROC_OTBR: TFIBFloatField
      FieldName = 'PROC_OTBR'
    end
    object TargsInd2RAZNOST_L_H: TFIBFloatField
      FieldName = 'RAZNOST_L_H'
    end
  end
  object TargsInd2_DS: TDataSource
    DataSet = TargsInd2
    OnDataChange = TargsInd_DSDataChange
    Left = 688
    Top = 152
  end
  object Statistics2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE "STATISTICS"'
      'SET '
      '    TARGSIND_ID = :TARGSIND_ID,'
      '    VREMYA_SOZDANIYA = :VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM = :OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV = :KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA = :OCENKA_NAKLONA_ISOBARA,'
      '    REYS = :REYS,'
      '    NEW_OCENKA_S_VESOM = :NEW_NEW_OCENKA_S_VESOM,'
      '    SRZNOC = :SRZNOC,'
      '    FL_SEANS = :FL_SEANS,'
      '    FL_SIGMA = :FL_SIGMA,'
      '    BEG_EH = :BEG_EH,'
      '    END_EH = :END_EH'
      'WHERE'
      '    ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    "STATISTICS"'
      'WHERE'
      '        ID_STATISTICS = :OLD_ID_STATISTICS'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO "STATISTICS"('
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      ')'
      'VALUES('
      '    :ID_STATISTICS,'
      '    :TARGSIND_ID,'
      '    :VREMYA_SOZDANIYA,'
      '    :OCENKA_S_VESOM,'
      '    :KOLICHESTVO_SAMOLETOV,'
      '    :OCENKA_NAKLONA_ISOBARA,'
      '    :REYS,'
      '    :NEW_OCENKA_S_VESOM,'
      '    :SRZNOC,'
      '    :FL_SEANS,'
      '    :FL_SIGMA,'
      '    :BEG_EH,'
      '    :END_EH'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      'FROM'
      '    "STATISTICS" '
      'WHERE( '
      '   TARGSIND_ID = ?MAS_ID_TARGSIND'
      '     ) and (     "STATISTICS".ID_STATISTICS = :OLD_ID_STATISTICS'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_STATISTICS,'
      '    TARGSIND_ID,'
      '    VREMYA_SOZDANIYA,'
      '    OCENKA_S_VESOM,'
      '    KOLICHESTVO_SAMOLETOV,'
      '    OCENKA_NAKLONA_ISOBARA,'
      '    REYS,'
      '    NEW_OCENKA_S_VESOM,'
      '    SRZNOC,'
      '    FL_SEANS,'
      '    FL_SIGMA,'
      '    BEG_EH,'
      '    END_EH'
      'FROM'
      '    "STATISTICS" '
      'WHERE'
      '   TARGSIND_ID = ?MAS_ID_TARGSIND'
      'ORDER BY'
      '    VREMYA_SOZDANIYA DESC ')
    AutoUpdateOptions.UpdateTableName = '"STATISTICS"'
    AutoUpdateOptions.KeyFields = 'ID_STATISTICS'
    AutoUpdateOptions.GeneratorName = 'STATISTICS_ID_STATISTICS_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    DataSource = TargsInd2_DS
    Left = 656
    Top = 184
    object Statistics2ID_STATISTICS: TFIBIntegerField
      FieldName = 'ID_STATISTICS'
    end
    object Statistics2TARGSIND_ID: TFIBIntegerField
      FieldName = 'TARGSIND_ID'
    end
    object Statistics2VREMYA_SOZDANIYA: TFIBDateTimeField
      FieldName = 'VREMYA_SOZDANIYA'
    end
    object Statistics2OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'OCENKA_S_VESOM'
    end
    object Statistics2KOLICHESTVO_SAMOLETOV: TFIBIntegerField
      FieldName = 'KOLICHESTVO_SAMOLETOV'
    end
    object Statistics2OCENKA_NAKLONA_ISOBARA: TFIBIntegerField
      FieldName = 'OCENKA_NAKLONA_ISOBARA'
    end
    object Statistics2REYS: TFIBStringField
      FieldName = 'REYS'
      Size = 50
      EmptyStrToNull = True
    end
    object Statistics2NEW_OCENKA_S_VESOM: TFIBFloatField
      FieldName = 'NEW_OCENKA_S_VESOM'
    end
    object Statistics2SRZNOC: TFIBFloatField
      FieldName = 'SRZNOC'
    end
    object Statistics2FL_SEANS: TFIBStringField
      FieldName = 'FL_SEANS'
      Size = 4
      EmptyStrToNull = True
    end
    object Statistics2FL_SIGMA: TFIBStringField
      FieldName = 'FL_SIGMA'
      Size = 4
      EmptyStrToNull = True
    end
    object Statistics2BEG_EH: TFIBIntegerField
      FieldName = 'BEG_EH'
    end
    object Statistics2END_EH: TFIBIntegerField
      FieldName = 'END_EH'
    end
  end
  object Statistics2_DS: TDataSource
    DataSet = Statistics2
    Left = 688
    Top = 184
  end
  object DeleteStatistics2: TpFIBQuery
    Transaction = Write_Transaction2
    Database = MonitoringTD
    SQL.Strings = (
      'DELETE FROM "STATISTICS"'
      'WHERE'
      '    ID_STATISTICS=:ID_STATISTICS')
    Left = 720
    Top = 184
  end
  object Isobara2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ISOBARA'
      'SET '
      '    ID_ISOBARA = :ID_ISOBARA,'
      '    SESSION_ID = :SESSION_ID,'
      '    IDENTIFIKATOR = :IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT = :RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI = :DIAPAZON_VISOTI,'
      '    RASSTOYANIE = :RASSTOYANIE'
      'WHERE'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ISOBARA'
      'WHERE'
      '        ')
    InsertSQL.Strings = (
      'INSERT INTO ISOBARA('
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      ')'
      'VALUES('
      '    :ID_ISOBARA,'
      '    :SESSION_ID,'
      '    :IDENTIFIKATOR,'
      '    :RAZNOST_BG_VISOT,'
      '    :DIAPAZON_VISOTI,'
      '    :RASSTOYANIE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      'FROM'
      '    ISOBARA ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_ISOBARA,'
      '    SESSION_ID,'
      '    IDENTIFIKATOR,'
      '    RAZNOST_BG_VISOT,'
      '    DIAPAZON_VISOTI,'
      '    RASSTOYANIE'
      'FROM'
      '    ISOBARA ')
    AutoUpdateOptions.UpdateTableName = 'ISOBARA'
    AutoUpdateOptions.KeyFields = 'ID_ISOBARA'
    AutoUpdateOptions.GeneratorName = 'ISOBARA_ID_ISOBARA_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    DataSource = TargsInSes2_DS
    Left = 656
    Top = 112
  end
  object Isobara2_DS: TDataSource
    DataSet = Isobara2
    Left = 688
    Top = 112
  end
  object DeleteIsobara2: TpFIBQuery
    Transaction = Write_Transaction2
    Database = MonitoringTD
    SQL.Strings = (
      'DELETE FROM ISOBARA WHERE SESSIONS_ID=?PAR1')
    Left = 720
    Top = 112
  end
  object MonitoringTD: TpFIBDatabase
    Connected = True
    DBName = 'D:\_MonitoringRVSM_\Montor_R\BD\blok 2.GDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=')
    DefaultTransaction = Read_Transaction2
    DefaultUpdateTransaction = Write_Transaction2
    SQLDialect = 3
    Timeout = 0
    UpperOldNames = True
    LibraryName = 'D:\_MonitoringRVSM_\Montor_R\BD\fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 584
    Top = 8
  end
  object DataAnalys1: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ANALYS'
      'SET '
      '    ID_BORTA = :ID_BORTA,'
      '    RESULT50 = :RESULT50,'
      '    RESULT100 = :RESULT100'
      'WHERE'
      '    ID_BORTA = :OLD_ID_BORTA')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ANALYS'
      'WHERE'
      '        ID_BORTA = :OLD_ID_BORTA')
    InsertSQL.Strings = (
      'INSERT INTO ANALYS('
      '    ID_BORTA,'
      '    RESULT50,'
      '    RESULT100'
      ')'
      'VALUES('
      '    :ID_BORTA,'
      '    :RESULT50,'
      '    :RESULT100'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_BORTA,'
      '    RESULT50,'
      '    RESULT100'
      'FROM'
      '    ANALYS ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_BORTA,'
      '    RESULT50,'
      '    RESULT100'
      'FROM'
      '    ANALYS ')
    AutoUpdateOptions.UpdateTableName = 'TARGSIND'
    AutoUpdateOptions.KeyFields = 'ID_TARGSIND'
    AutoUpdateOptions.GeneratorName = 'TARGSIND_ID_TARGSIND_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction1
    Database = MoninoringSB
    UpdateTransaction = Write_Transaction1
    AutoCommit = True
    Left = 280
    Top = 224
    object DataAnalys1ID_BORTA: TFIBIntegerField
      FieldName = 'ID_BORTA'
    end
    object DataAnalys1RESULT50: TFIBFloatField
      FieldName = 'RESULT50'
    end
    object DataAnalys1RESULT100: TFIBFloatField
      FieldName = 'RESULT100'
    end
  end
  object DataAnalys1_DS: TDataSource
    DataSet = DataAnalys1
    Left = 312
    Top = 224
  end
  object DataAnalys: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ANALYS1'
      'SET '
      '    ID_BORTA = :ID_BORTA,'
      '    RESULT50 = :RESULT50,'
      '    RESULT100 = :RESULT100'
      'WHERE'
      '    ID_BORTA = :OLD_ID_BORTA')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ANALYS1'
      'WHERE'
      'ID_BORTA = :OLD_ID_BORTA'
      '        ')
    InsertSQL.Strings = (
      'INSERT INTO ANALYS1('
      '    ID_BORTA,'
      '    RESULT50,'
      '    RESULT100'
      ')'
      'VALUES('
      '    :ID_BORTA,'
      '    :RESULT50,'
      '    :RESULT100'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_BORTA,'
      '    RESULT50,'
      '    RESULT100'
      'FROM'
      '    ANALYS1 ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_BORTA,'
      '    RESULT50,'
      '    RESULT100'
      'FROM'
      '    ANALYS1 ')
    AutoUpdateOptions.UpdateTableName = 'TARGSIND'
    AutoUpdateOptions.KeyFields = 'ID_TARGSIND'
    AutoUpdateOptions.GeneratorName = 'TARGSIND_ID_TARGSIND_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction
    Database = MonitoringDB
    UpdateTransaction = Write_Transaction
    AutoCommit = True
    Left = 48
    Top = 224
    object DataAnalysID_BORTA: TFIBIntegerField
      FieldName = 'ID_BORTA'
    end
    object DataAnalysRESULT50: TFIBFloatField
      FieldName = 'RESULT50'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
    object DataAnalysRESULT100: TFIBFloatField
      FieldName = 'RESULT100'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
    end
  end
  object DataAnalys_DS: TDataSource
    DataSet = DataAnalys
    Left = 80
    Top = 224
  end
  object DataAnalys2: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ANALYS'
      'SET '
      '    ID_BORTA = :ID_BORTA,'
      '    RESULT50 = :RESULT50,'
      '    RSULT100 = :RSULT100'
      'WHERE'
      '    ID_BORTA = :OLD_ID_BORTA'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ANALYS'
      'WHERE'
      '            ID_BORTA = :OLD_ID_BORTA')
    InsertSQL.Strings = (
      'INSERT INTO ANALYS('
      '    ID_BORTA,'
      '    RESULT50,'
      '    RSULT100'
      ')'
      'VALUES('
      '    :ID_BORTA,'
      '    :RESULT50,'
      '    :RSULT100'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID_BORTA,'
      '    RESULT50,'
      '    RSULT100'
      'FROM'
      '    ANALYS ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID_BORTA,'
      '    RESULT50,'
      '    RSULT100'
      'FROM'
      '    ANALYS ')
    AutoUpdateOptions.UpdateTableName = 'TARGSIND'
    AutoUpdateOptions.KeyFields = 'ID_TARGSIND'
    AutoUpdateOptions.GeneratorName = 'TARGSIND_ID_TARGSIND_GEN'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = Read_Transaction2
    Database = MonitoringTD
    UpdateTransaction = Write_Transaction2
    AutoCommit = True
    Left = 656
    Top = 216
    object DataAnalys2ID_BORTA: TFIBIntegerField
      FieldName = 'ID_BORTA'
    end
    object DataAnalys2RESULT50: TFIBFloatField
      FieldName = 'RESULT50'
    end
    object DataAnalys2RSULT100: TFIBFloatField
      FieldName = 'RSULT100'
    end
  end
  object DataAnalys2_DS: TDataSource
    DataSet = DataAnalys2
    Left = 688
    Top = 216
  end
end
