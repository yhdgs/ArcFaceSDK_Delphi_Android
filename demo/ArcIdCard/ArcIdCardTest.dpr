program ArcIdCardTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  HeaderFooterTemplate in 'HeaderFooterTemplate.pas' {HeaderFooterForm},
  Androidapi.JNI.libIdCardVeri in '..\..\source\Androidapi.JNI.libIdCardVeri.pas',
  JBitmapTools in '..\..\source\JBitmapTools.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THeaderFooterForm, HeaderFooterForm);
  Application.Run;
end.
