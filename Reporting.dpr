program Reporting;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  uDataModule in 'uDataModule.pas' {DataBase: TDataModule},
  uFastReport in 'uFastReport.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataBase, DataBase);
  Application.Run;
end.
