unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, Androidapi.JNI.JavaTypes, Androidapi.Helpers,
  FMX.Media, FMX.StdActns, FMX.MediaLibrary.Actions, System.Actions,
  FMX.ActnList, Androidapi.JNI.GraphicsContentViewText,
  FMX.Helpers.Android, Androidapi.JNIBridge,
  FMX.Surfaces, FMX.DialogService, FMX.Objects, Androidapi.JNI.libIdCardVeri,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox, FMX.Layouts;

type
  THeaderFooterForm = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    HeaderLabel: TLabel;
    btnMatch: TButton;
    btnIdCard: TButton;
    btnRyzp: TButton;
    ActionList1: TActionList;
    actGetIdCardFromCamera: TTakePhotoFromCameraAction;
    actGetRyzpFromCamera: TTakePhotoFromCameraAction;
    imgIdCard: TImage;
    spl1: TSplitter;
    imgRyzp: TImage;
    StyleBook1: TStyleBook;
    ppIdCard: TPopup;
    lst1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    actGetIdCardFromAlbum: TTakePhotoFromLibraryAction;
    actGetRyzpFromAlbum: TTakePhotoFromLibraryAction;
    ppRyzp: TPopup;
    lst2: TListBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGetIdCardFromCameraDidFinishTaking(Image: TBitmap);
    procedure actGetRyzpFromCameraDidFinishTaking(Image: TBitmap);
    procedure btnIdCardClick(Sender: TObject);
    procedure btnMatchClick(Sender: TObject);
    procedure btnRyzpClick(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
  private
    { Private declarations }
    FIdCardChanged, FRyzpChanged: Boolean;
    FIdCardFic: JIdCardVerifyManager;
  public
    procedure MatchFace;
    { Public declarations }
  end;

var
  HeaderFooterForm: THeaderFooterForm;

implementation

uses
  JBitmapTools;

{$R *.fmx}


procedure THeaderFooterForm.FormDestroy(Sender: TObject);
begin
  if Assigned(FIdCardFic) then
    FIdCardFic.unInit;
end;

procedure THeaderFooterForm.FormCreate(Sender: TObject);
begin
  Self.StyleBook := StyleBook1;
  FIdCardChanged := True;
  FRyzpChanged := True;
  try
    FIdCardFic := TJIdCardVerifyManager.JavaClass.getInstance;
    if not Assigned(FIdCardFic) then
    begin
      TDialogService.ShowMessage('初始化比对引擎失败！');
      Exit;
    end;

    if FIdCardFic.jnit
      (StringToJString('你的APPID'),
      StringToJString(你的Key)) <>
      TJIdCardVerifyError.JavaClass.OK then
      TDialogService.ShowMessage('初始化失败！');
  except
    on e: Exception do
      TDialogService.ShowMessage('初始化失败：' + e.Message);
  end;
end;

procedure THeaderFooterForm.actGetIdCardFromCameraDidFinishTaking
  (Image: TBitmap);
begin
  imgIdCard.Bitmap.Assign(Image);
  FIdCardChanged := True;
end;

procedure THeaderFooterForm.actGetRyzpFromCameraDidFinishTaking(Image: TBitmap);
begin
  imgRyzp.Bitmap.Assign(Image);
  FRyzpChanged := True;
end;

procedure THeaderFooterForm.btnIdCardClick(Sender: TObject);
begin
  ppIdCard.IsOpen := True;
end;

procedure THeaderFooterForm.btnMatchClick(Sender: TObject);
begin
  MatchFace;
end;

procedure THeaderFooterForm.btnRyzpClick(Sender: TObject);
begin
  ppRyzp.IsOpen := True;
end;

procedure THeaderFooterForm.ListBoxItem1Click(Sender: TObject);
begin
  actGetIdCardFromAlbum.Execute;
  ppIdCard.IsOpen := False;
end;

procedure THeaderFooterForm.ListBoxItem2Click(Sender: TObject);
begin
  actGetIdCardFromCamera.Execute;
  ppIdCard.IsOpen := False;
end;

procedure THeaderFooterForm.ListBoxItem3Click(Sender: TObject);
begin
  actGetRyzpFromAlbum.Execute;
  ppRyzp.IsOpen := False;
end;

procedure THeaderFooterForm.ListBoxItem4Click(Sender: TObject);
begin
  actGetRyzpFromCamera.Execute;
  ppRyzp.IsOpen := False;
end;

procedure THeaderFooterForm.MatchFace;
var
  // iRet: Integer;
  lBytesIdCard, lBytesRyzp: TJavaArray<Byte>;
  lJBitmapIdCard, lJBitmapRyzp: Jbitmap;
  jr: JCompareResult;
  jdr: JDetectFaceResult;
  t, tLoadIdCard, tLoadRyzp, tProcessIdCard, tProcessRyzp,
    tComareFace: Cardinal;
begin

  if (imgIdCard.Bitmap.IsEmpty) then
  begin
    TDialogService.ShowMessage('证件照片为空！');
    Exit;
  end;

  if (imgRyzp.Bitmap.IsEmpty) then
  begin
    TDialogService.ShowMessage('人员照片为空！');
    Exit;
  end;

  try
    try
      {
        iRet := FIdCardFic.jnit
        (StringToJString('3y9w8kYFw1DRBtudjdwPCHLqT9B8jgVY7PjAYDwqxakf'),
        StringToJString('2p674yayt5gSfBoRfrz6SnBPMoGt2u9uaQUmsfEXb8om'));
        if iRet <> TJIdCardVerifyError.JavaClass.OK then
        begin
        TDialogService.ShowMessage('初始化失败！');
        Exit;
        end;
      }
      tLoadIdCard := 0;
      tLoadRyzp := 0;
      tProcessIdCard := 0;
      tProcessRyzp := 0;
      tComareFace := 0;

      if FIdCardChanged then
      begin

        t := TThread.GetTickCount;
        lJBitmapIdCard := BitmapToJBitmap(imgIdCard.Bitmap);
        lBytesIdCard := TJImageUtils.JavaClass.getNV21(imgIdCard.Bitmap.Width,
          imgIdCard.Bitmap.Height, lJBitmapIdCard);

        tLoadIdCard := TThread.GetTickCount - t;

        t := TThread.GetTickCount;
        if FIdCardChanged then
        begin
          jdr := FIdCardFic.inputIdCardData
            (lBytesIdCard, imgIdCard.Bitmap.Width, imgIdCard.Bitmap.Height);
          if jdr.getErrCode <> TJIdCardVerifyError.JavaClass.OK then
          begin
            TDialogService.ShowMessage('处理证件照片发生错误：' +
              inttostr(jdr.getErrCode));
            Exit;
          end;
          FIdCardChanged := False;
        end;
        tProcessIdCard := TThread.GetTickCount - t;

        if Assigned(lBytesIdCard) then
        begin
          lBytesIdCard.DisposeOf;
          lBytesIdCard := nil;
        end;

      end;

      if FRyzpChanged then
      begin

        t := TThread.GetTickCount;
        lJBitmapRyzp := BitmapToJBitmap(imgRyzp.Bitmap);
        lBytesRyzp := TJImageUtils.JavaClass.getNV21(imgRyzp.Bitmap.Width,
          imgRyzp.Bitmap.Height, lJBitmapRyzp);
        tLoadRyzp := TThread.GetTickCount - t;

        t := TThread.GetTickCount;
        jdr := FIdCardFic.onPreviewData
          (lBytesRyzp, imgRyzp.Bitmap.Width, imgRyzp.Bitmap.Height, False);
        if jdr.getErrCode <> TJIdCardVerifyError.JavaClass.OK then
        begin
          TDialogService.ShowMessage('处理人员照片发生错误：' +
            inttostr(jdr.getErrCode));
          Exit;
        end;
        tProcessRyzp := TThread.GetTickCount - t;
        FRyzpChanged := False;
      end;

      t := TThread.GetTickCount;
      jr := FIdCardFic.compareFeature(0.82);
      tComareFace := TThread.GetTickCount - t;
      t := jr.getErrCode;
      if t = TJIdCardVerifyError.JavaClass.OK then
        t := 0;

      TDialogService.ShowMessage(Format('相似度：%f%%' + #13#10 +
        '处理时间：' + #13#10 +
        '载入证件照片：%d毫秒' + #13#10 +
        '处理证件照片：%d毫秒' + #13#10 +
        '载入证件照片：%d毫秒' + #13#10 +
        '处理证件照片：%d毫秒' + #13#10 +
        '比对照片：%d毫秒' + #13#10 +
        '错误标志：%d',
        [jr.getResult * 100, tLoadIdCard, tProcessIdCard, tLoadRyzp,
        tProcessRyzp, tComareFace, t]));

    finally
      // FIdCardFic.unInit;
      if Assigned(lBytesIdCard) then
        lBytesIdCard.DisposeOf;
      if Assigned(lBytesRyzp) then
        lBytesRyzp.DisposeOf;
    end;
  except
    on e: Exception do
      ShowMessage('执行人证比对发生错误：' + e.Message);
  end;

end;

end.
