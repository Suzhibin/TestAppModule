//
//  NSObject+AuthManager.h
//  YoutuFaceSDK
//
//  Created by PanCheng on 10/21/16.
//  Copyright © 2016 Patrick Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

#define YTCOMMON_VERSION @"151"

@interface AuthManager : NSObject
/**set licence file full path*/
//AUTH_SUCCESS                = 0,
//AUTH_INVALID_LIC            = 1<<0;
//AUTH_INVALID_BUNDLEID       = 1<<1;
//AUTH_INVALID_CACHE          = 1<<2;
//AUTH_LOCKED                 = 1<<3;
//AUTH_INVALID_DATE           = 1<<4;
//AUTH_LIC_PATH_ERROR         = -10;
+ (int)setLicencePath:(NSString *)licencePath;

//AUTH_SUCCESS                = 0,
//AUTH_INVALID_LIC            = 1<<0;
//AUTH_INVALID_BUNDLEID       = 1<<1;
//AUTH_INVALID_CACHE          = 1<<2;
//AUTH_LOCKED                 = 1<<3;
//AUTH_INVALID_DATE           = 1<<4;
//AUTH_LIC_PATH_ERROR         = -10;
+ (int)setLicenceStr:(NSString*)licenceString;

+ (int)initAuthForQQ;

//通过错误码获取原因
+ (NSString*)getErrorReason:(int)authErrorCode;

//授权失败时是否展示错误码，默认DEBUG模式会在授权失败时显示错误原因
+ (void)setIsShowFailedReason:(bool)isShowReason;

// Get sdk authorized time.
// return 0 if not call setLicencePath() before.
// otherwise return timestamp accurate to seconds
+ (int64_t)getEndTime;

+ (int)getVersion;

// Clear auth.
// WARNING: if you continue to use SDK functionality, you need to call the interface: + (int)setLicencePath:(NSString *)licencePath
+ (void)clearAuthInfo;

//Check whether current auth is valid or not
+ (int)currentAuthStatus;

+ (NSString*)getLicenceStr;

+ (void)clearLicenceStr;

@end
