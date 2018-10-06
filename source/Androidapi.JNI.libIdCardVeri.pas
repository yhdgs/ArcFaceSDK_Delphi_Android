// ====================================================
//
// JNI调用单元 by NJTZ 2018-10-06
//
// 本单元使用JarOrClass2Pas(原JavaClassToDelphiUnit)转换
// 以下为 JarOrClass2Pas 工具相关信息：
// 		原始作者：ying32
// 		QQ: 1444386932、396506155
// 		Email：yuanfen3287@vip.qq.com
// 		修改 By：Flying Wang & 爱吃猪头肉
// 		生成时间：2018-10-06 21:53:22
// 		工具版本：1.0.2018.2.26
//
// ====================================================
unit Androidapi.JNI.libIdCardVeri;

interface

{$IFDEF ANDROID}


uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText;

type

  // ===== Forward declarations =====

  JAFD_FSDKEngine = interface; // com.arcsoft.facedetection.AFD_FSDKEngine
  JAFD_FSDKError = interface; // com.arcsoft.facedetection.AFD_FSDKError
  JAFD_FSDKFace = interface; // com.arcsoft.facedetection.AFD_FSDKFace
  JAFD_FSDKVersion = interface; // com.arcsoft.facedetection.AFD_FSDKVersion
  // JFIC_IdCard = interface; //com.arcsoft.facefic.FIC_IdCard
  JAFR_FSDKEngine = interface; // com.arcsoft.facerecognition.AFR_FSDKEngine
  JAFR_FSDKError = interface; // com.arcsoft.facerecognition.AFR_FSDKError
  JAFR_FSDKFace = interface; // com.arcsoft.facerecognition.AFR_FSDKFace
  JAFR_FSDKMatching = interface; // com.arcsoft.facerecognition.AFR_FSDKMatching
  JAFR_FSDKVersion = interface; // com.arcsoft.facerecognition.AFR_FSDKVersion
  JAFT_FSDKEngine = interface; // com.arcsoft.facetracking.AFT_FSDKEngine
  JAFT_FSDKError = interface; // com.arcsoft.facetracking.AFT_FSDKError
  JAFT_FSDKFace = interface; // com.arcsoft.facetracking.AFT_FSDKFace
  JAFT_FSDKVersion = interface; // com.arcsoft.facetracking.AFT_FSDKVersion
  JCompareResult = interface; // com.arcsoft.idcardveri.CompareResult
  JDetectFaceResult = interface; // com.arcsoft.idcardveri.DetectFaceResult
  JIdCardVerifyError = interface; // com.arcsoft.idcardveri.IdCardVerifyError
  JIdCardVerifyManager = interface; // com.arcsoft.idcardveri.IdCardVerifyManager
  // JIdCardVerInfo = interface; //com.arcsoft.idcardveri.IdCardVerInfo
  JImageUtils = interface; // com.arcsoft.util.ImageUtils

  // ===== Forward SuperClasses declarations =====


  // ===== Interface declarations =====

  JAFD_FSDKEngineClass = interface(JObjectClass)
    ['{DC7FA551-92FD-4705-B76B-2752A098A02E}']
    { static Property Methods }
    { class } function _GetCP_PAF_NV21: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_OPF_0_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_OPF_90_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_OPF_270_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_OPF_180_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_OPF_0_HIGHER_EXT: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_0: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_90: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_270: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_180: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_30: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_60: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_120: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_150: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_210: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_240: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_300: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFD_FOC_330: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JAFD_FSDKEngine; cdecl; // ()V

    { static Property }
    { class } property CP_PAF_NV21: Integer read _GetCP_PAF_NV21;
    { class } property AFD_OPF_0_ONLY: Integer read _GetAFD_OPF_0_ONLY;
    { class } property AFD_OPF_90_ONLY: Integer read _GetAFD_OPF_90_ONLY;
    { class } property AFD_OPF_270_ONLY: Integer read _GetAFD_OPF_270_ONLY;
    { class } property AFD_OPF_180_ONLY: Integer read _GetAFD_OPF_180_ONLY;
    { class } property AFD_OPF_0_HIGHER_EXT: Integer
      read _GetAFD_OPF_0_HIGHER_EXT;
    { class } property AFD_FOC_0: Integer read _GetAFD_FOC_0;
    { class } property AFD_FOC_90: Integer read _GetAFD_FOC_90;
    { class } property AFD_FOC_270: Integer read _GetAFD_FOC_270;
    { class } property AFD_FOC_180: Integer read _GetAFD_FOC_180;
    { class } property AFD_FOC_30: Integer read _GetAFD_FOC_30;
    { class } property AFD_FOC_60: Integer read _GetAFD_FOC_60;
    { class } property AFD_FOC_120: Integer read _GetAFD_FOC_120;
    { class } property AFD_FOC_150: Integer read _GetAFD_FOC_150;
    { class } property AFD_FOC_210: Integer read _GetAFD_FOC_210;
    { class } property AFD_FOC_240: Integer read _GetAFD_FOC_240;
    { class } property AFD_FOC_300: Integer read _GetAFD_FOC_300;
    { class } property AFD_FOC_330: Integer read _GetAFD_FOC_330;
  end;

  [JavaSignature('com/arcsoft/facedetection/AFD_FSDKEngine')]
  JAFD_FSDKEngine = interface(JObject)
    ['{927CDDE7-37A5-427C-9024-5C6848FDBD3F}']
    { Property Methods }

    { methods }
    function AFD_FSDK_InitialFaceEngine(paramString1: JString;
      paramString2: JString; paramInt1: Integer; paramInt2: Integer;
      paramInt3: Integer): JAFD_FSDKError; cdecl;
    // (Ljava/lang/String;Ljava/lang/String;III)Lcom/arcsoft/facedetection/AFD_FSDKError;
    function AFD_FSDK_UninitialFaceEngine: JAFD_FSDKError; cdecl;
    // ()Lcom/arcsoft/facedetection/AFD_FSDKError;
    function AFD_FSDK_StillImageFaceDetection(paramArrayOfByte
      : TJavaArray<Byte>; paramInt1: Integer; paramInt2: Integer;
      paramInt3: Integer; paramList: JList): JAFD_FSDKError; cdecl;
    // ([BIIILjava/util/List;)Lcom/arcsoft/facedetection/AFD_FSDKError;
    function AFD_FSDK_GetVersion(paramAFD_FSDKVersion: JAFD_FSDKVersion)
      : JAFD_FSDKError; cdecl;
    // (Lcom/arcsoft/facedetection/AFD_FSDKVersion;)Lcom/arcsoft/facedetection/AFD_FSDKError;

    { Property }
  end;

  TJAFD_FSDKEngine = class(TJavaGenericImport<JAFD_FSDKEngineClass,
    JAFD_FSDKEngine>)
  end;

  JAFD_FSDKErrorClass = interface(JObjectClass)
    ['{A79AE328-1483-4D9A-86C2-1768F1CBF811}']
    { static Property Methods }
    { class } function _GetMOK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BASIC_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_UNKNOWN: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_INVALID_PARAM: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_NO_MEMORY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BAD_STATE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BUFFER_OVERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BUFFER_UNDERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_APP_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_SDK_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_ID_PAIR: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_MISMATCH_ID_AND_SDK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_SYSTEM_VERSION_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_LICENCE_EXPIRED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JAFD_FSDKError; cdecl; // ()V

    { static Property }
    { class } property MOK: Integer read _GetMOK;
    { class } property MERR_BASIC_BASE: Integer read _GetMERR_BASIC_BASE;
    { class } property MERR_UNKNOWN: Integer read _GetMERR_UNKNOWN;
    { class } property MERR_INVALID_PARAM: Integer read _GetMERR_INVALID_PARAM;
    { class } property MERR_UNSUPPORTED: Integer read _GetMERR_UNSUPPORTED;
    { class } property MERR_NO_MEMORY: Integer read _GetMERR_NO_MEMORY;
    { class } property MERR_BAD_STATE: Integer read _GetMERR_BAD_STATE;
    { class } property MERR_BUFFER_OVERFLOW: Integer
      read _GetMERR_BUFFER_OVERFLOW;
    { class } property MERR_BUFFER_UNDERFLOW: Integer
      read _GetMERR_BUFFER_UNDERFLOW;
    { class } property MERR_FSDK_BASE: Integer read _GetMERR_FSDK_BASE;
    { class } property MERR_FSDK_INVALID_APP_ID: Integer
      read _GetMERR_FSDK_INVALID_APP_ID;
    { class } property MERR_FSDK_INVALID_SDK_ID: Integer
      read _GetMERR_FSDK_INVALID_SDK_ID;
    { class } property MERR_FSDK_INVALID_ID_PAIR: Integer
      read _GetMERR_FSDK_INVALID_ID_PAIR;
    { class } property MERR_FSDK_MISMATCH_ID_AND_SDK: Integer
      read _GetMERR_FSDK_MISMATCH_ID_AND_SDK;
    { class } property MERR_FSDK_SYSTEM_VERSION_UNSUPPORTED: Integer
      read _GetMERR_FSDK_SYSTEM_VERSION_UNSUPPORTED;
    { class } property MERR_FSDK_LICENCE_EXPIRED: Integer
      read _GetMERR_FSDK_LICENCE_EXPIRED;
  end;

  [JavaSignature('com/arcsoft/facedetection/AFD_FSDKError')]
  JAFD_FSDKError = interface(JObject)
    ['{8D6DE6BA-46AA-4591-A331-6D35A38B5B5C}']
    { Property Methods }
    function _GetmCode: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    procedure _SetmCode(amCode: Integer);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (I)V

    { methods }
    function getCode: Integer; cdecl; // ()I

    { Property }
    property mCode: Integer read _GetmCode write _SetmCode;
  end;

  TJAFD_FSDKError = class(TJavaGenericImport<JAFD_FSDKErrorClass,
    JAFD_FSDKError>)
  end;

  JAFD_FSDKFaceClass = interface(JObjectClass)
    ['{50B9D748-4AE2-43EC-A379-FCC37F9BDF11}']
    { static Property Methods }

    { static Methods }
    { class } function init(paramAFD_FSDKFace: JAFD_FSDKFace): JAFD_FSDKFace;
      cdecl; overload; // (Lcom/arcsoft/facedetection/AFD_FSDKFace;)V
    { class } function init: JAFD_FSDKFace; cdecl; overload; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/facedetection/AFD_FSDKFace')]
  JAFD_FSDKFace = interface(JObject)
    ['{0F80AB7B-5178-4EEA-828F-004C1A31C565}']
    { Property Methods }
    function _GetmRect: JRect;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // Landroid/graphics/Rect;
    procedure _SetmRect(amRect: JRect);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (Landroid/graphics/Rect;)V
    function _GetmDegree: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    procedure _SetmDegree(amDegree: Integer);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (I)V

    { methods }
    function getRect: JRect; cdecl; // ()Landroid/graphics/Rect;
    function getDegree: Integer; cdecl; // ()I
    function toString: JString; cdecl; // ()Ljava/lang/String;
    function clone: JAFD_FSDKFace; cdecl; overload; // ()Lcom/arcsoft/facedetection/AFD_FSDKFace;
    //function clone: JObject; cdecl; overload; // ()Ljava/lang/Object;

    { Property }
    property mRect: JRect read _GetmRect write _SetmRect;
    property mDegree: Integer read _GetmDegree write _SetmDegree;
  end;

  TJAFD_FSDKFace = class(TJavaGenericImport<JAFD_FSDKFaceClass, JAFD_FSDKFace>)
  end;

  JAFD_FSDKVersionClass = interface(JObjectClass)
    ['{EEF5045D-B4ED-4C19-98F9-ADD3876B498E}']
    { static Property Methods }

    { static Methods }
    { class } function init: JAFD_FSDKVersion; cdecl; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/facedetection/AFD_FSDKVersion')]
  JAFD_FSDKVersion = interface(JObject)
    ['{A181CC42-017C-4CBF-BF97-B1430D5D1B28}']
    { Property Methods }
    function _GetmVersion: JString;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // Ljava/lang/String;
    procedure _SetmVersion(amVersion: JString);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (Ljava/lang/String;)V

    { methods }
    function toString: JString; cdecl; // ()Ljava/lang/String;

    { Property }
    property mVersion: JString read _GetmVersion write _SetmVersion;
  end;

  TJAFD_FSDKVersion = class(TJavaGenericImport<JAFD_FSDKVersionClass,
    JAFD_FSDKVersion>)
  end;

  (*
    JFIC_IdCardClass = interface(JObjectClass)
    ['{C6018E3B-2A33-4A22-8CA2-A31CF17BAE0E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JFIC_IdCard; cdecl; //()V
    {class} function getInstance: JFIC_IdCard; cdecl; //()Lcom/arcsoft/facefic/FIC_IdCard;

    { static Property }
    end;

    [JavaSignature('com/arcsoft/facefic/FIC_IdCard')]
    JFIC_IdCard = interface(JObject)
    ['{F14F69BD-DF78-4BE0-A507-277A7E9376C0}']
    { Property Methods }

    { methods }
    function initFSDKEngines(paramString1: JString; paramString2: JString): Integer; cdecl; //(Ljava/lang/String;Ljava/lang/String;)I
    procedure unInitFSDKEngines; cdecl; //()V
    function AFD_StillImageFaceDetection(paramArrayOfByte: TJavaArray<Byte>; paramInt1: Integer; paramInt2: Integer; paramInt3: Integer; paramList: JList): Integer; cdecl; //([BIIILjava/util/List;)I
    function AFT_FaceFeatureDetect(paramArrayOfByte: TJavaArray<Byte>; paramInt1: Integer; paramInt2: Integer; paramInt3: Integer; paramList: JList): Integer; cdecl; //([BIIILjava/util/List;)I
    function AFR_ExtractFRFeature(paramArrayOfByte: TJavaArray<Byte>; paramInt1: Integer; paramInt2: Integer; paramInt3: Integer; paramRect: JRect; paramInt4: Integer; paramAFR_FSDKFace: JAFR_FSDKFace; paramBoolean: Boolean): Integer; cdecl; //([BIIILandroid/graphics/Rect;ILcom/arcsoft/facerecognition/AFR_FSDKFace;Z)I
    function compareFaces(paramAFR_FSDKFace1: JAFR_FSDKFace; paramAFR_FSDKFace2: JAFR_FSDKFace; paramAFR_FSDKMatching: JAFR_FSDKMatching): Integer; cdecl; //(Lcom/arcsoft/facerecognition/AFR_FSDKFace;Lcom/arcsoft/facerecognition/AFR_FSDKFace;Lcom/arcsoft/facerecognition/AFR_FSDKMatching;)I

    { Property }
    end;

    TJFIC_IdCard = class(TJavaGenericImport<JFIC_IdCardClass, JFIC_IdCard>) end;
  *)

  JAFR_FSDKEngineClass = interface(JObjectClass)
    ['{AF3A25CD-1A69-4637-86F8-9F1BF1021A15}']
    { static Property Methods }
    { class } function _GetCP_PAF_NV21: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_0: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_90: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_270: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_180: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_30: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_60: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_120: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_150: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_210: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_240: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_300: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFR_FOC_330: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JAFR_FSDKEngine; cdecl; // ()V

    { static Property }
    { class } property CP_PAF_NV21: Integer read _GetCP_PAF_NV21;
    { class } property AFR_FOC_0: Integer read _GetAFR_FOC_0;
    { class } property AFR_FOC_90: Integer read _GetAFR_FOC_90;
    { class } property AFR_FOC_270: Integer read _GetAFR_FOC_270;
    { class } property AFR_FOC_180: Integer read _GetAFR_FOC_180;
    { class } property AFR_FOC_30: Integer read _GetAFR_FOC_30;
    { class } property AFR_FOC_60: Integer read _GetAFR_FOC_60;
    { class } property AFR_FOC_120: Integer read _GetAFR_FOC_120;
    { class } property AFR_FOC_150: Integer read _GetAFR_FOC_150;
    { class } property AFR_FOC_210: Integer read _GetAFR_FOC_210;
    { class } property AFR_FOC_240: Integer read _GetAFR_FOC_240;
    { class } property AFR_FOC_300: Integer read _GetAFR_FOC_300;
    { class } property AFR_FOC_330: Integer read _GetAFR_FOC_330;
  end;

  [JavaSignature('com/arcsoft/facerecognition/AFR_FSDKEngine')]
  JAFR_FSDKEngine = interface(JObject)
    ['{B84661AB-9957-4582-B2A4-7BBA5D551B42}']
    { Property Methods }

    { methods }
    function AFR_FSDK_InitialEngine(paramString1: JString;
      paramString2: JString): JAFR_FSDKError; cdecl;
    // (Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/facerecognition/AFR_FSDKError;
    function AFR_FSDK_UninitialEngine: JAFR_FSDKError; cdecl;
    // ()Lcom/arcsoft/facerecognition/AFR_FSDKError;
    function AFR_FSDK_ExtractFRFeature(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer; paramInt3: Integer;
      paramRect: JRect; paramInt4: Integer; paramAFR_FSDKFace: JAFR_FSDKFace)
      : JAFR_FSDKError; cdecl;
    // ([BIIILandroid/graphics/Rect;ILcom/arcsoft/facerecognition/AFR_FSDKFace;)Lcom/arcsoft/facerecognition/AFR_FSDKError;
    function AFR_FSDK_FacePairMatching(paramAFR_FSDKFace1: JAFR_FSDKFace;
      paramAFR_FSDKFace2: JAFR_FSDKFace;
      paramAFR_FSDKMatching: JAFR_FSDKMatching): JAFR_FSDKError; cdecl;
    // (Lcom/arcsoft/facerecognition/AFR_FSDKFace;Lcom/arcsoft/facerecognition/AFR_FSDKFace;Lcom/arcsoft/facerecognition/AFR_FSDKMatching;)Lcom/arcsoft/facerecognition/AFR_FSDKError;
    function AFR_FSDK_GetVersion(paramAFR_FSDKVersion: JAFR_FSDKVersion)
      : JAFR_FSDKError; cdecl;
    // (Lcom/arcsoft/facerecognition/AFR_FSDKVersion;)Lcom/arcsoft/facerecognition/AFR_FSDKError;

    { Property }
  end;

  TJAFR_FSDKEngine = class(TJavaGenericImport<JAFR_FSDKEngineClass,
    JAFR_FSDKEngine>)
  end;

  JAFR_FSDKErrorClass = interface(JObjectClass)
    ['{B46CD48F-E291-4CC6-8458-894BB7047557}']
    { static Property Methods }
    { class } function _GetMOK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BASIC_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_UNKNOWN: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_INVALID_PARAM: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_NO_MEMORY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BAD_STATE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BUFFER_OVERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BUFFER_UNDERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_APP_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_SDK_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_ID_PAIR: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_MISMATCH_ID_AND_SDK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_SYSTEM_VERSION_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_LICENCE_EXPIRED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_FR_ERROR_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_FR_INVALID_MEMORY_INFO: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_FR_INVALID_IMAGE_INFO: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_FR_INVALID_FACE_INFO: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_FR_NO_GPU_AVAILABLE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_FR_MISMATCHED_FEATURE_LEVEL: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JAFR_FSDKError; cdecl; // ()V

    { static Property }
    { class } property MOK: Integer read _GetMOK;
    { class } property MERR_BASIC_BASE: Integer read _GetMERR_BASIC_BASE;
    { class } property MERR_UNKNOWN: Integer read _GetMERR_UNKNOWN;
    { class } property MERR_INVALID_PARAM: Integer read _GetMERR_INVALID_PARAM;
    { class } property MERR_UNSUPPORTED: Integer read _GetMERR_UNSUPPORTED;
    { class } property MERR_NO_MEMORY: Integer read _GetMERR_NO_MEMORY;
    { class } property MERR_BAD_STATE: Integer read _GetMERR_BAD_STATE;
    { class } property MERR_BUFFER_OVERFLOW: Integer
      read _GetMERR_BUFFER_OVERFLOW;
    { class } property MERR_BUFFER_UNDERFLOW: Integer
      read _GetMERR_BUFFER_UNDERFLOW;
    { class } property MERR_FSDK_BASE: Integer read _GetMERR_FSDK_BASE;
    { class } property MERR_FSDK_INVALID_APP_ID: Integer
      read _GetMERR_FSDK_INVALID_APP_ID;
    { class } property MERR_FSDK_INVALID_SDK_ID: Integer
      read _GetMERR_FSDK_INVALID_SDK_ID;
    { class } property MERR_FSDK_INVALID_ID_PAIR: Integer
      read _GetMERR_FSDK_INVALID_ID_PAIR;
    { class } property MERR_FSDK_MISMATCH_ID_AND_SDK: Integer
      read _GetMERR_FSDK_MISMATCH_ID_AND_SDK;
    { class } property MERR_FSDK_SYSTEM_VERSION_UNSUPPORTED: Integer
      read _GetMERR_FSDK_SYSTEM_VERSION_UNSUPPORTED;
    { class } property MERR_FSDK_LICENCE_EXPIRED: Integer
      read _GetMERR_FSDK_LICENCE_EXPIRED;
    { class } property MERR_FSDK_FR_ERROR_BASE: Integer
      read _GetMERR_FSDK_FR_ERROR_BASE;
    { class } property MERR_FSDK_FR_INVALID_MEMORY_INFO: Integer
      read _GetMERR_FSDK_FR_INVALID_MEMORY_INFO;
    { class } property MERR_FSDK_FR_INVALID_IMAGE_INFO: Integer
      read _GetMERR_FSDK_FR_INVALID_IMAGE_INFO;
    { class } property MERR_FSDK_FR_INVALID_FACE_INFO: Integer
      read _GetMERR_FSDK_FR_INVALID_FACE_INFO;
    { class } property MERR_FSDK_FR_NO_GPU_AVAILABLE: Integer
      read _GetMERR_FSDK_FR_NO_GPU_AVAILABLE;
    { class } property MERR_FSDK_FR_MISMATCHED_FEATURE_LEVEL: Integer
      read _GetMERR_FSDK_FR_MISMATCHED_FEATURE_LEVEL;
  end;

  [JavaSignature('com/arcsoft/facerecognition/AFR_FSDKError')]
  JAFR_FSDKError = interface(JObject)
    ['{A8F817FB-EB41-4376-A41D-BA6E3776D109}']
    { Property Methods }
    function _GetmCode: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    procedure _SetmCode(amCode: Integer);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (I)V

    { methods }
    function getCode: Integer; cdecl; // ()I

    { Property }
    property mCode: Integer read _GetmCode write _SetmCode;
  end;

  TJAFR_FSDKError = class(TJavaGenericImport<JAFR_FSDKErrorClass,
    JAFR_FSDKError>)
  end;

  JAFR_FSDKFaceClass = interface(JObjectClass)
    ['{6D3282E1-550C-4608-B4FD-54F487AADAC0}']
    { static Property Methods }
    { class } function _GetFEATURE_SIZE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init(paramAFR_FSDKFace: JAFR_FSDKFace): JAFR_FSDKFace;
      cdecl; overload; // (Lcom/arcsoft/facerecognition/AFR_FSDKFace;)V
    { class } function init: JAFR_FSDKFace; cdecl; overload; // ()V
    { class } function init(paramArrayOfByte: TJavaArray<Byte>): JAFR_FSDKFace;
      cdecl; overload; // ([B)V

    { static Property }
    { class } property FEATURE_SIZE: Integer read _GetFEATURE_SIZE;
  end;

  [JavaSignature('com/arcsoft/facerecognition/AFR_FSDKFace')]
  JAFR_FSDKFace = interface(JObject)
    ['{A5EAB8C8-3655-47CE-A1DF-60656B5BDF6B}']
    { Property Methods }
    function _GetmFeatureData: TJavaArray<Byte>;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // [B
    procedure _SetmFeatureData(amFeatureData: TJavaArray<Byte>);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // ([B)V

    { methods }
    function getFeatureData: TJavaArray<Byte>; cdecl; // ()[B
    procedure setFeatureData(paramArrayOfByte: TJavaArray<Byte>); cdecl;
    // ([B)V
    function clone: JAFR_FSDKFace; cdecl; overload; // ()Lcom/arcsoft/facerecognition/AFR_FSDKFace;
    //function clone: JObject; cdecl; overload; // ()Ljava/lang/Object;

    { Property }
    property mFeatureData: TJavaArray<Byte> read _GetmFeatureData
      write _SetmFeatureData;
  end;

  TJAFR_FSDKFace = class(TJavaGenericImport<JAFR_FSDKFaceClass, JAFR_FSDKFace>)
  end;

  JAFR_FSDKMatchingClass = interface(JObjectClass)
    ['{201D9266-81DE-4EC1-B6F2-DEADFB44D982}']
    { static Property Methods }

    { static Methods }
    { class } function init: JAFR_FSDKMatching; cdecl; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/facerecognition/AFR_FSDKMatching')]
  JAFR_FSDKMatching = interface(JObject)
    ['{4F120558-64B6-45CD-A859-54C45747267C}']
    { Property Methods }
    function _GetmScore: Single;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // F
    procedure _SetmScore(amScore: Single);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (F)V

    { methods }
    function getScore: Single; cdecl; // ()F

    { Property }
    property mScore: Single read _GetmScore write _SetmScore;
  end;

  TJAFR_FSDKMatching = class(TJavaGenericImport<JAFR_FSDKMatchingClass,
    JAFR_FSDKMatching>)
  end;

  JAFR_FSDKVersionClass = interface(JObjectClass)
    ['{371B9284-D2F3-40B5-B2E5-95BDE473BE28}']
    { static Property Methods }

    { static Methods }
    { class } function init: JAFR_FSDKVersion; cdecl; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/facerecognition/AFR_FSDKVersion')]
  JAFR_FSDKVersion = interface(JObject)
    ['{1D86530F-4D81-4F88-9381-5BC2B76A90A8}']
    { Property Methods }
    function _GetmVersion: JString;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // Ljava/lang/String;
    procedure _SetmVersion(amVersion: JString);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (Ljava/lang/String;)V
    function _GetlFeatureLevel: Int64;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // J
    procedure _SetlFeatureLevel(alFeatureLevel: Int64);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (J)V

    { methods }
    function toString: JString; cdecl; // ()Ljava/lang/String;
    function getFeatureLevel: Int64; cdecl; // ()J

    { Property }
    property mVersion: JString read _GetmVersion write _SetmVersion;
    property lFeatureLevel: Int64 read _GetlFeatureLevel
      write _SetlFeatureLevel;
  end;

  TJAFR_FSDKVersion = class(TJavaGenericImport<JAFR_FSDKVersionClass,
    JAFR_FSDKVersion>)
  end;

  JAFT_FSDKEngineClass = interface(JObjectClass)
    ['{BA3ADCA5-8EAF-41AF-8E7F-D55323969DE6}']
    { static Property Methods }
    { class } function _GetCP_PAF_NV21: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_OPF_0_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_OPF_90_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_OPF_270_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_OPF_180_ONLY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_OPF_0_HIGHER_EXT: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_FOC_0: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_FOC_90: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_FOC_270: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetAFT_FOC_180: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JAFT_FSDKEngine; cdecl; // ()V

    { static Property }
    { class } property CP_PAF_NV21: Integer read _GetCP_PAF_NV21;
    { class } property AFT_OPF_0_ONLY: Integer read _GetAFT_OPF_0_ONLY;
    { class } property AFT_OPF_90_ONLY: Integer read _GetAFT_OPF_90_ONLY;
    { class } property AFT_OPF_270_ONLY: Integer read _GetAFT_OPF_270_ONLY;
    { class } property AFT_OPF_180_ONLY: Integer read _GetAFT_OPF_180_ONLY;
    { class } property AFT_OPF_0_HIGHER_EXT: Integer
      read _GetAFT_OPF_0_HIGHER_EXT;
    { class } property AFT_FOC_0: Integer read _GetAFT_FOC_0;
    { class } property AFT_FOC_90: Integer read _GetAFT_FOC_90;
    { class } property AFT_FOC_270: Integer read _GetAFT_FOC_270;
    { class } property AFT_FOC_180: Integer read _GetAFT_FOC_180;
  end;

  [JavaSignature('com/arcsoft/facetracking/AFT_FSDKEngine')]
  JAFT_FSDKEngine = interface(JObject)
    ['{9DCDCB6F-9BF5-4888-A5A8-EF327C5B1BE6}']
    { Property Methods }

    { methods }
    function AFT_FSDK_InitialFaceEngine(paramString1: JString;
      paramString2: JString; paramInt1: Integer; paramInt2: Integer;
      paramInt3: Integer): JAFT_FSDKError; cdecl;
    // (Ljava/lang/String;Ljava/lang/String;III)Lcom/arcsoft/facetracking/AFT_FSDKError;
    function AFT_FSDK_FaceFeatureDetect(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer; paramInt3: Integer;
      paramList: JList): JAFT_FSDKError; cdecl;
    // ([BIIILjava/util/List;)Lcom/arcsoft/facetracking/AFT_FSDKError;
    function AFT_FSDK_UninitialFaceEngine: JAFT_FSDKError; cdecl;
    // ()Lcom/arcsoft/facetracking/AFT_FSDKError;
    function AFT_FSDK_GetVersion(paramAFT_FSDKVersion: JAFT_FSDKVersion)
      : JAFT_FSDKError; cdecl;
    // (Lcom/arcsoft/facetracking/AFT_FSDKVersion;)Lcom/arcsoft/facetracking/AFT_FSDKError;

    { Property }
  end;

  TJAFT_FSDKEngine = class(TJavaGenericImport<JAFT_FSDKEngineClass,
    JAFT_FSDKEngine>)
  end;

  JAFT_FSDKErrorClass = interface(JObjectClass)
    ['{139C4F81-1823-483E-B911-E7E21ECF2A76}']
    { static Property Methods }
    { class } function _GetMOK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BASIC_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_UNKNOWN: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_INVALID_PARAM: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_NO_MEMORY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BAD_STATE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BUFFER_OVERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_BUFFER_UNDERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_BASE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_APP_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_SDK_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_INVALID_ID_PAIR: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_MISMATCH_ID_AND_SDK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_SYSTEM_VERSION_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetMERR_FSDK_LICENCE_EXPIRED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JAFT_FSDKError; cdecl; // ()V

    { static Property }
    { class } property MOK: Integer read _GetMOK;
    { class } property MERR_BASIC_BASE: Integer read _GetMERR_BASIC_BASE;
    { class } property MERR_UNKNOWN: Integer read _GetMERR_UNKNOWN;
    { class } property MERR_INVALID_PARAM: Integer read _GetMERR_INVALID_PARAM;
    { class } property MERR_UNSUPPORTED: Integer read _GetMERR_UNSUPPORTED;
    { class } property MERR_NO_MEMORY: Integer read _GetMERR_NO_MEMORY;
    { class } property MERR_BAD_STATE: Integer read _GetMERR_BAD_STATE;
    { class } property MERR_BUFFER_OVERFLOW: Integer
      read _GetMERR_BUFFER_OVERFLOW;
    { class } property MERR_BUFFER_UNDERFLOW: Integer
      read _GetMERR_BUFFER_UNDERFLOW;
    { class } property MERR_FSDK_BASE: Integer read _GetMERR_FSDK_BASE;
    { class } property MERR_FSDK_INVALID_APP_ID: Integer
      read _GetMERR_FSDK_INVALID_APP_ID;
    { class } property MERR_FSDK_INVALID_SDK_ID: Integer
      read _GetMERR_FSDK_INVALID_SDK_ID;
    { class } property MERR_FSDK_INVALID_ID_PAIR: Integer
      read _GetMERR_FSDK_INVALID_ID_PAIR;
    { class } property MERR_FSDK_MISMATCH_ID_AND_SDK: Integer
      read _GetMERR_FSDK_MISMATCH_ID_AND_SDK;
    { class } property MERR_FSDK_SYSTEM_VERSION_UNSUPPORTED: Integer
      read _GetMERR_FSDK_SYSTEM_VERSION_UNSUPPORTED;
    { class } property MERR_FSDK_LICENCE_EXPIRED: Integer
      read _GetMERR_FSDK_LICENCE_EXPIRED;
  end;

  [JavaSignature('com/arcsoft/facetracking/AFT_FSDKError')]
  JAFT_FSDKError = interface(JObject)
    ['{4C8737EB-8380-4A69-936F-F96C94ABE804}']
    { Property Methods }
    function _GetmCode: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    procedure _SetmCode(amCode: Integer);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (I)V

    { methods }
    function getCode: Integer; cdecl; // ()I

    { Property }
    property mCode: Integer read _GetmCode write _SetmCode;
  end;

  TJAFT_FSDKError = class(TJavaGenericImport<JAFT_FSDKErrorClass,
    JAFT_FSDKError>)
  end;

  JAFT_FSDKFaceClass = interface(JObjectClass)
    ['{41C97248-93FE-4B99-9A86-FA31769047FA}']
    { static Property Methods }

    { static Methods }
    { class } function init(paramAFT_FSDKFace: JAFT_FSDKFace): JAFT_FSDKFace;
      cdecl; overload; // (Lcom/arcsoft/facetracking/AFT_FSDKFace;)V
    { class } function init: JAFT_FSDKFace; cdecl; overload; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/facetracking/AFT_FSDKFace')]
  JAFT_FSDKFace = interface(JObject)
    ['{EAB5D49B-9091-4EBF-BF37-A35ACE6B488F}']
    { Property Methods }
    function _GetmRect: JRect;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // Landroid/graphics/Rect;
    procedure _SetmRect(amRect: JRect);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (Landroid/graphics/Rect;)V
    function _GetmDegree: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    procedure _SetmDegree(amDegree: Integer);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (I)V

    { methods }
    function getRect: JRect; cdecl; // ()Landroid/graphics/Rect;
    function getDegree: Integer; cdecl; // ()I
    function toString: JString; cdecl; // ()Ljava/lang/String;
    function clone: JAFT_FSDKFace; cdecl; overload; // ()Lcom/arcsoft/facetracking/AFT_FSDKFace;
    //function clone: JObject; cdecl; overload; // ()Ljava/lang/Object;

    { Property }
    property mRect: JRect read _GetmRect write _SetmRect;
    property mDegree: Integer read _GetmDegree write _SetmDegree;
  end;

  TJAFT_FSDKFace = class(TJavaGenericImport<JAFT_FSDKFaceClass, JAFT_FSDKFace>)
  end;

  JAFT_FSDKVersionClass = interface(JObjectClass)
    ['{A77F14AE-02A9-4367-9C3C-625D35B3FCF4}']
    { static Property Methods }

    { static Methods }
    { class } function init: JAFT_FSDKVersion; cdecl; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/facetracking/AFT_FSDKVersion')]
  JAFT_FSDKVersion = interface(JObject)
    ['{73390DF2-C907-4679-AC4A-15761CF907BB}']
    { Property Methods }
    function _GetmVersion: JString;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // Ljava/lang/String;
    procedure _SetmVersion(amVersion: JString);
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // (Ljava/lang/String;)V

    { methods }
    function toString: JString; cdecl; // ()Ljava/lang/String;

    { Property }
    property mVersion: JString read _GetmVersion write _SetmVersion;
  end;

  TJAFT_FSDKVersion = class(TJavaGenericImport<JAFT_FSDKVersionClass,
    JAFT_FSDKVersion>)
  end;

  JCompareResultClass = interface(JObjectClass)
    ['{479760CE-2231-4249-BB78-1538C65022CA}']
    { static Property Methods }

    { static Methods }
    { class } function init: JCompareResult; cdecl; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/idcardveri/CompareResult')]
  JCompareResult = interface(JObject)
    ['{5D952A84-DB47-41B7-9853-99582605A036}']
    { Property Methods }

    { methods }
    function isSuccess: Boolean; cdecl; // ()Z
    function getResult: Double; cdecl; // ()D
    function getErrCode: Integer; cdecl; // ()I

    { Property }
  end;

  TJCompareResult = class(TJavaGenericImport<JCompareResultClass,
    JCompareResult>)
  end;

  JDetectFaceResultClass = interface(JObjectClass)
    ['{165CE0A6-A36E-49B5-9506-01DC1667F0D8}']
    { static Property Methods }

    { static Methods }
    { class } function init: JDetectFaceResult; cdecl; // ()V

    { static Property }
  end;

  [JavaSignature('com/arcsoft/idcardveri/DetectFaceResult')]
  JDetectFaceResult = interface(JObject)
    ['{BD38410B-5715-44BC-B52B-C06677061BF9}']
    { Property Methods }

    { methods }
    function getErrCode: Integer; cdecl; // ()I
    function getFaceRect: JRect; cdecl; // ()Landroid/graphics/Rect;

    { Property }
  end;

  TJDetectFaceResult = class(TJavaGenericImport<JDetectFaceResultClass,
    JDetectFaceResult>)
  end;

  JIdCardVerifyErrorClass = interface(JObjectClass)
    ['{252FBAA3-D993-46EB-9230-34E3B099E5C9}']
    { static Property Methods }
    { class } function _GetOK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_NULL_PARAMETER: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_INVALID_DATA: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_NO_FACE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_NO_PICORVIDEO_DATA: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_NO_IDCARD_DATA: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_COMPARE_NOT_READY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_ENGINE_INIT_ERROR: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_UNKNOWN: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_INVALID_PARAM: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_NO_MEMORY: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_BAD_STATE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_BUFFER_OVERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_BUFFER_UNDERFLOW: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_INVALID_APP_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_INVALID_SDK_ID: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_INVALID_ID_PAIR: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_MISMATCH_ID_AND_SDK: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_SYSTEM_VERSION_UNSUPPORTED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_LICENCE_EXPIRED: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_FR_INVALID_MEMORY_INFO: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_FR_INVALID_IMAGE_INFO: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_FR_INVALID_FACE_INFO: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_FR_NO_GPU_AVAILABLE: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I
    { class } function _GetERR_FR_MISMATCHED_FEATURE_LEVEL: Integer;
{$IF CompilerVersion >= 29.0} cdecl; { >=XE8 }{$IFEND} // I

    { static Methods }
    { class } function init: JIdCardVerifyError; cdecl; // ()V

    { static Property }
    { class } property OK: Integer read _GetOK;
    { class } property ERR_NULL_PARAMETER: Integer read _GetERR_NULL_PARAMETER;
    { class } property ERR_INVALID_DATA: Integer read _GetERR_INVALID_DATA;
    { class } property ERR_NO_FACE: Integer read _GetERR_NO_FACE;
    { class } property ERR_NO_PICORVIDEO_DATA: Integer
      read _GetERR_NO_PICORVIDEO_DATA;
    { class } property ERR_NO_IDCARD_DATA: Integer read _GetERR_NO_IDCARD_DATA;
    { class } property ERR_COMPARE_NOT_READY: Integer
      read _GetERR_COMPARE_NOT_READY;
    { class } property ERR_ENGINE_INIT_ERROR: Integer
      read _GetERR_ENGINE_INIT_ERROR;
    { class } property ERR_UNKNOWN: Integer read _GetERR_UNKNOWN;
    { class } property ERR_INVALID_PARAM: Integer read _GetERR_INVALID_PARAM;
    { class } property ERR_UNSUPPORTED: Integer read _GetERR_UNSUPPORTED;
    { class } property ERR_NO_MEMORY: Integer read _GetERR_NO_MEMORY;
    { class } property ERR_BAD_STATE: Integer read _GetERR_BAD_STATE;
    { class } property ERR_BUFFER_OVERFLOW: Integer
      read _GetERR_BUFFER_OVERFLOW;
    { class } property ERR_BUFFER_UNDERFLOW: Integer
      read _GetERR_BUFFER_UNDERFLOW;
    { class } property ERR_INVALID_APP_ID: Integer read _GetERR_INVALID_APP_ID;
    { class } property ERR_INVALID_SDK_ID: Integer read _GetERR_INVALID_SDK_ID;
    { class } property ERR_INVALID_ID_PAIR: Integer
      read _GetERR_INVALID_ID_PAIR;
    { class } property ERR_MISMATCH_ID_AND_SDK: Integer
      read _GetERR_MISMATCH_ID_AND_SDK;
    { class } property ERR_SYSTEM_VERSION_UNSUPPORTED: Integer
      read _GetERR_SYSTEM_VERSION_UNSUPPORTED;
    { class } property ERR_LICENCE_EXPIRED: Integer
      read _GetERR_LICENCE_EXPIRED;
    { class } property ERR_FR_INVALID_MEMORY_INFO: Integer
      read _GetERR_FR_INVALID_MEMORY_INFO;
    { class } property ERR_FR_INVALID_IMAGE_INFO: Integer
      read _GetERR_FR_INVALID_IMAGE_INFO;
    { class } property ERR_FR_INVALID_FACE_INFO: Integer
      read _GetERR_FR_INVALID_FACE_INFO;
    { class } property ERR_FR_NO_GPU_AVAILABLE: Integer
      read _GetERR_FR_NO_GPU_AVAILABLE;
    { class } property ERR_FR_MISMATCHED_FEATURE_LEVEL: Integer
      read _GetERR_FR_MISMATCHED_FEATURE_LEVEL;
  end;

  [JavaSignature('com/arcsoft/idcardveri/IdCardVerifyError')]
  JIdCardVerifyError = interface(JObject)
    ['{990DBEE3-BD7F-4DA0-A06A-604AF665110F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIdCardVerifyError = class(TJavaGenericImport<JIdCardVerifyErrorClass,
    JIdCardVerifyError>)
  end;

  JIdCardVerifyManagerClass = interface(JObjectClass)
    ['{A32D01DC-F149-40E6-AC18-E44FFDDBA227}']
    { static Property Methods }

    { static Methods }
    { class } function init: JIdCardVerifyManager; cdecl; // ()V
    { class } function getInstance: JIdCardVerifyManager; cdecl;
    // ()Lcom/arcsoft/idcardveri/IdCardVerifyManager;

    { static Property }
  end;

  [JavaSignature('com/arcsoft/idcardveri/IdCardVerifyManager')]
  JIdCardVerifyManager = interface(JObject)
    ['{3FE918C2-C1BC-4A86-A0E8-B7F971334C6F}']
    { Property Methods }

    { methods }
    function jnit(paramString1: JString; paramString2: JString): Integer; cdecl;
    // (Ljava/lang/String;Ljava/lang/String;)I
    procedure unInit; cdecl; // ()V
    function onPreviewData(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer; paramBoolean: Boolean)
      : JDetectFaceResult; cdecl;
    // ([BIIZ)Lcom/arcsoft/idcardveri/DetectFaceResult;
    function inputIdCardData(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer): JDetectFaceResult; cdecl;
    // ([BII)Lcom/arcsoft/idcardveri/DetectFaceResult;
    function compareFeature(paramDouble: Double): JCompareResult; cdecl;
    // (D)Lcom/arcsoft/idcardveri/CompareResult;
    function getVersion: JString; cdecl; // ()Ljava/lang/String;

    { Property }
  end;

  TJIdCardVerifyManager = class(TJavaGenericImport<JIdCardVerifyManagerClass,
    JIdCardVerifyManager>)
  end;

  (*
    JIdCardVerInfoClass = interface(JObjectClass)
    ['{7BF13B39-F2D2-459B-86C4-CD26516515EA}']
    { static Property Methods }
    {class} function _Geta: Boolean;{$IF CompilerVersion >= 29.0} cdecl; {>=XE8}{$IFEND} //Z
    {class} function _Getb: JString;{$IF CompilerVersion >= 29.0} cdecl; {>=XE8}{$IFEND} //Ljava/lang/String;
    {class} function _Getc: JString;{$IF CompilerVersion >= 29.0} cdecl; {>=XE8}{$IFEND} //Ljava/lang/String;
    {class} function _Getd: JString;{$IF CompilerVersion >= 29.0} cdecl; {>=XE8}{$IFEND} //Ljava/lang/String;
    {class} function _Gete: Integer;{$IF CompilerVersion >= 29.0} cdecl; {>=XE8}{$IFEND} //I
    {class} function _Getf: JString;{$IF CompilerVersion >= 29.0} cdecl; {>=XE8}{$IFEND} //Ljava/lang/String;

    { static Methods }
    {class} function init: JIdCardVerInfo; cdecl; //()V

    { static Property }
    {class} property a: Boolean read _Geta;
    {class} property b: JString read _Getb;
    {class} property c: JString read _Getc;
    {class} property d: JString read _Getd;
    {class} property e: Integer read _Gete;
    {class} property f: JString read _Getf;
    end;
    [JavaSignature('com/arcsoft/idcardveri/IdCardVerInfo')]
    JIdCardVerInfo = interface(JObject)
    ['{A5DEC094-8D3A-4DD3-9C66-C8F1BA900124}']
    { Property Methods }

    { methods }

    { Property }
    end;

    TJIdCardVerInfo = class(TJavaGenericImport<JIdCardVerInfoClass, JIdCardVerInfo>) end;
  *)

  JImageUtilsClass = interface(JObjectClass)
    ['{5A78FE2C-8F9E-4679-BDE0-B5AA653DECAD}']
    { static Property Methods }

    { static Methods }
    { class } function init: JImageUtils; cdecl; // ()V
    { class } function getNV21(paramInt1: Integer; paramInt2: Integer;
      paramBitmap: JBitmap): TJavaArray<Byte>; cdecl;
    // (IILandroid/graphics/Bitmap;)[B
    { class } procedure nv21ToNv12(paramArrayOfByte1: TJavaArray<Byte>;
      paramArrayOfByte2: TJavaArray<Byte>; paramInt1: Integer;
      paramInt2: Integer); cdecl; // ([B[BII)V
    { class } procedure mirrorNV21(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer); cdecl; // ([BII)V
    { class } procedure mirror(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer); cdecl; // ([BII)V
    { class } function yuvToBitmap(paramArrayOfByte: TJavaArray<Byte>;
      paramInt1: Integer; paramInt2: Integer): JBitmap; cdecl;
    // ([BII)Landroid/graphics/Bitmap;
    { class } function rotateBitmap(paramBitmap: JBitmap; paramFloat: Single)
      : JBitmap; cdecl; // (Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    { class } function isFaceLocationOK(paramRect: JRect; paramInt1: Integer;
      paramInt2: Integer): Boolean; cdecl; // (Landroid/graphics/Rect;II)Z

    { static Property }
  end;

  [JavaSignature('com/arcsoft/util/ImageUtils')]
  JImageUtils = interface(JObject)
    ['{E3D56538-9116-4249-94B6-DB7C01EBDF5A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJImageUtils = class(TJavaGenericImport<JImageUtilsClass, JImageUtils>)
  end;

{$ENDIF}

implementation

{$IFDEF ANDROID}


procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFD_FSDKEngine',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFD_FSDKEngine));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFD_FSDKError',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFD_FSDKError));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFD_FSDKFace',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFD_FSDKFace));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFD_FSDKVersion',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFD_FSDKVersion));
  // TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JFIC_IdCard',
  // TypeInfo(Androidapi.JNI.libIdCardVeri.JFIC_IdCard));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFR_FSDKEngine',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFR_FSDKEngine));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFR_FSDKError',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFR_FSDKError));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFR_FSDKFace',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFR_FSDKFace));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFR_FSDKMatching',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFR_FSDKMatching));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFR_FSDKVersion',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFR_FSDKVersion));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFT_FSDKEngine',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFT_FSDKEngine));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFT_FSDKError',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFT_FSDKError));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFT_FSDKFace',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFT_FSDKFace));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JAFT_FSDKVersion',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JAFT_FSDKVersion));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JCompareResult',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JCompareResult));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JDetectFaceResult',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JDetectFaceResult));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JIdCardVerifyError',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JIdCardVerifyError));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JIdCardVerifyManager',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JIdCardVerifyManager));
  // TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JIdCardVerInfo',
  // TypeInfo(Androidapi.JNI.libIdCardVeri.JIdCardVerInfo));
  TRegTypes.RegisterType('Androidapi.JNI.libIdCardVeri.JImageUtils',
    TypeInfo(Androidapi.JNI.libIdCardVeri.JImageUtils));
end;

initialization

RegisterTypes;

{$ENDIF}

end.
