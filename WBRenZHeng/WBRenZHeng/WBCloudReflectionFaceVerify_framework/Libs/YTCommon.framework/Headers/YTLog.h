//
//  YTLog.h
//  YTCommon
//
//  Created by darrenyao on 2017/6/21.
//  Copyright © 2017年 tencent. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void(^YTLogCallback)(NSString *message);

/**YTLogD，打印调试信息，Release模式下不会显示*/
#ifdef __OPTIMIZE__
#define YTLogD(fmt, ...)
#else
#define YTLogD(fmt, ...) YTLogger(nil, 0, (@"[Youtu] %s[Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#endif

/**打印错误信息，Release模式下同样会显示*/
#define YTLogE(fmt, ...) YTLogger(nil, 1, (@"[Youtu] %s[Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

/**打印错误信息，Release模式下同样会显示，并利用callback回调给外部*/
#define YTLogCallbackE(callback, fmt, ...) YTLogger(callback, 1, (@"[Youtu] %s[Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)



FOUNDATION_EXPORT void YTLogger(YTLogCallback callback, int mode, NSString *format, ...) NS_FORMAT_FUNCTION(3,4) NS_NO_TAIL_CALL;
