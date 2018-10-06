unit JBitmapTools;

interface

uses
  Androidapi.JNI.GraphicsContentViewText,
  FMX.Helpers.Android, FMX.Graphics,
  FMX.Surfaces;
function JBitmapToBitmap(const AImage: JBitmap): TBitmap;
function BitmapToJBitmap(Bmp: TBitmap): JBitmap;

implementation

// JBitmapתBitmap
function JBitmapToBitmap(const AImage: JBitmap): TBitmap;
var
  bitmapSurface: TBitmapSurface;
begin
  bitmapSurface := TBitmapSurface.Create;
  try
    if JBitmapToSurface(AImage, bitmapSurface) then
    begin
      Result.Assign(bitmapSurface);
    end;
  finally
    bitmapSurface.Free;
  end;
end;

// BitmapתJBitmap
function BitmapToJBitmap(Bmp: TBitmap): JBitmap;
var
  mBitmap: JBitmap;
  Surface: TBitmapSurface;
begin
  Surface := TBitmapSurface.Create;
  Surface.Assign(Bmp);
  mBitmap := TJBitmap.JavaClass.createBitmap(Bmp.Width, Bmp.Height,
    TJBitmap_Config.JavaClass.ARGB_8888);
  if SurfaceToJBitmap(Surface, mBitmap) then
    Result := mBitmap;
end;

end.
