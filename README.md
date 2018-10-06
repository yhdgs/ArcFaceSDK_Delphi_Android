# ArcFaceSDK_Delphi_Android
基于虹软免费人脸识别库（Android版）的Delphi(10.2.3)封装，目前仅支持人证核验（人证核验是专门二代证身份证芯片中低像素照片进行优化的人脸比对版本，相比较常规SDK相似度可提高20%）

## 文件列表

source	源码目录前

source\Androidapi.JNI.libIdCardVeri.pas	人证验证库 jni 调用封装

source\JBitmapTools.pas	TBitmap 转 JBitmap 工具函数

libs	API SO库

libs\libIdCardVeri_custom.jar	人证核验库自定义jni调用jar包，对应人证验证SDK版本为1.0版，基于官方jni包作了优化，修改官方“神”逻辑，即每次比对人证照片时都必须按顺序走完1.提取证件照片人脸特征、2.提取人员照片人脸特征、3.比对人证人脸特征三步，即使人证照片数据未更改，也必须重新走一遍，造成CPU资源的浪费，而且这样根本无法应用基于摄像头的实时人证比对。代码修改后，第一次走完三步流程（第1步和第2步可乱序）后如果其中一张照片更改后只要重新载入该张照片处理后再执行比对即可。应用场景，证件照片载入后不变，人员照片从摄像头实时更新，这样只要第一次处理证件照片，后续只需要执行人员照片处理和特征比对两步即可。

libs\armeabi	armV7以下版本API库，请到虹软主页<https://ai.arcsoft.com.cn/index.html>下载后解压放入，人证核验SDK（版本必须为1.0）应包括以下文件：

	libArcSoft_FDEngine.so

	libArcSoft_FREngine.so

	libArcSoft_FTEngine.so

	libmpbase.so

libs\armeabi-v7a	armV7以上版本API库，请到虹软主页<https://ai.arcsoft.com.cn/index.html>下载后解压放入，人证核验库文件同上。

Demo	演示项目（Delphi10.2.3编译通过）

Demo\ArcIdCard	基于人证核验SDK的DEMO，无需其他第三方控

README.md	说明文档


## 更新历史

2018.10.07

1、创建项目
