//
//  WBFaceVerifySDKConfig.h
//  Pods
//
//  Created by pp on 2017/8/2.
//
//

#import <Foundation/Foundation.h>
#import "WBFaceVerifyConst.h"
NS_ASSUME_NONNULL_BEGIN

/**
 人脸识别SDK 基础配置类
 */
@interface WBFaceVerifySDKConfig : NSObject

/*
 是否使用非标模式（具体含义请咨询技术支持）
 ！！！使用原WBCloudFaceVerifySimpleSDK切过来的，务必打开此项
 默认为NO
 */
@property (nonatomic, assign) BOOL useSimpleMode;

#pragma mark - common
/**
 sdk中拉起人脸活体识别界面中使用UIWindow时的windowLevel配置,默认配置是1 + UIWindowLevelNormal

 如果接入放app中有其他自定义UIWindow, 为了防止界面覆盖,可以酌情设置该参数
 */
@property (nonatomic, assign) NSUInteger windowLevel;

/**
 人脸识别服务结果页是否展示配置项 - 是否展示人脸对比成功界面 -> 建议关闭

 default: NO
 */
@property (nonatomic, assign) BOOL showSuccessPage;

/**
 人脸识别服务结果页是否展示配置项 - 是否展示人脸对比失败界面 -> 建议关闭

 default: NO
 */
@property (nonatomic, assign) BOOL showFailurePage;

/**
 人脸识别服务是否进行通过录像, 从而进行视频存证 -> 建议开启

 default: YES
 */
@property (nonatomic, assign) BOOL recordVideo;

/**
 光线活体专属配置: 预检检测过程是否允许闭眼睛

 default: YES - 允许用户闭眼
 */
@property (nonatomic, assign) BOOL enableCloseEyes;

/**
 是否由SDK内部处理sdk网络请求的cookie

 默认值: NO， 默认情况使用iOS系统策略处理cookie

 如果设置 manualCookie = YES，表示sdk内部会手动处理cookie
 */
@property (nonatomic, assign) BOOL manualCookie;

/**
 人脸识别页面中的主题风格, 需要配合不同资源包使用:
 WBFaceVerifyThemeDarkness - 暗灰主题
 WBFaceVerifyThemeLightness - 明亮主题
 */
@property (nonatomic, assign) WBFaceVerifyTheme theme;

/**
 是否静音
 默认值：NO
 */
@property (nonatomic, assign) BOOL mute;

/**
 刷脸服务走iPv6协议栈
 默认：NO
 */
@property (nonatomic, assign) BOOL isIpv6;

/*
 送入自定义提示文案的位置
 默认：WBFaceCustomTipsLoc_Bottom
 */
@property (nonatomic, assign) WBFaceCustomTipsLoc tipsLoc;

/*
 检测过程中展示的文案
 默认为空
 */
@property (nonatomic, copy) NSString *customTipsInDetect;

/*
 上传过程中展示的文案
 默认为空
 */
@property (nonatomic, copy) NSString *customTipsInUpload;

/*
 底部提示文案，长度不超过70字
 */
@property (nonatomic, copy) NSString *bottomCustomTips;

/*
 退出二次确认UI配置
 */
@property (nonatomic, copy) NSString *exitAlertTitle; //标题
@property (nonatomic, copy) NSString *exitAlertMessage; //内容
@property (nonatomic, copy) NSString *exitAlertRight; //右边按钮
@property (nonatomic, copy) NSString *exitAlertLeft; //左边按钮

/*
 是否打开美颜效果
 默认为YES (iPhone6S以下机型无法开启，强制关闭)
 */
@property (nonatomic, assign) BOOL enableFaceBeauty;

/*
 如果有使用苹果分屏模式（UIWindowScene），打开此开关
 Xcode11新建工程有使用Scene，可以参考资料自行调整
 默认为NO
 */
@property (nonatomic, assign) BOOL useWindowSecene;

#pragma mark - simple //非标特有字段，标准模式无需设置
/**
 是否返回录制的视频
 
 default: NO
 */
@property (nonatomic, assign) BOOL returnVideo;

/**
 返回视频加密的公钥，如果不配置则不加密
 
 需要recordVideo returnVideo同时为YES，才返回加密的视频内容
 */
@property (nonatomic, copy) NSString *publicKey;

/**
 AES加密需要用到的IV
 */
@property (nonatomic, copy) NSString *aesIV;
/**
 默认sdk配置
 */
+(instancetype)sdkConfig;

@end
NS_ASSUME_NONNULL_END
