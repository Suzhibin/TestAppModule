#ifndef _YT_FACE_DETECTOR_H_
#define _YT_FACE_DETECTOR_H_

#include "yt_common.h"
#include "yt_defines.h"

typedef struct yt_face_detector_param_t {
    int min_face_size;     ///< 最小搜索步长，建议使用默认值
    int max_face_size;     ///< 最大搜索步长，建议使用默认值
    int bigger_face_mode;  ///< 检测模式：0:完整检测, 1:快速检测
    bool non_square_rect;  ///< 检测框：是否为正方形框
    float threshold;       ///< 检测阈值：建议使用默认值
} yt_face_detector_param;

/**
 * @brief 获取版本
 *
 * @param[in] handle 实例句柄，当实例句柄为 NULL 的时候，返回为 SDK 版本，否则返回 （SDK 版本 + MODEL 版本）
 * @return SDK 版本 或者（SDK 版本 + MODEL 版本）
 */
YT_PUBLIC const char *yt_face_detector_get_version(yt_handle handle);

/**
 * @brief 初始化SDK，每个进程只需调用一次
 *
 * @param[in] model_dirpath 传入模型绝对路径或者相对路径，例如：`./model/face-xxx`
 * @param[in] config_filename 传入模型路径下的配置文件名称，例如：`config.ini`
 * @return YT_SUCCESS：成功，其他：失败
 */
YT_PUBLIC int yt_face_detector_create_handle(yt_handle *handle, const char *model_dirpath, const char *config_filename);

#ifdef __ANDROID__
#include <android/asset_manager.h>
/**
 * @brief 初始化SDK，每个进程只需调用一次，该接口用于 android 加载 assets 目录下模型文件
 *        如有 jni 开发需求，可以通过此接口加载模型
 *
 * @param[in] mgr 通过 `AAssetManager *mgr = AAssetManager_fromJava(env, assetManager);` 获得
 * @param[in] assets_model_dirpath 传入模型相对于 `assets` 目录的路径，例如：`models/face-xxx`
 * @param[in] assets_config_filename 传入模型路径下的配置文件名称，例如：`config.ini`
 * @return YT_SUCCESS：成功，其他：失败
 */
YT_PUBLIC int yt_face_detector_create_handle_android(yt_handle *handle, AAssetManager *mgr, const char *model_dirpath, const char *config_filename);
#endif

/**
 * @brief 销毁实例
 *
 * @param[in] handle 实例句柄
 */
YT_PUBLIC void yt_face_detector_destroy_handle(yt_handle handle);

/**
 * @brief 获取参数
 *
 * @param[in] handle 实例句柄
 * @param[out] param 默认参数
 * @return YT_SUCCESS：成功，其他：失败
 */
YT_PUBLIC int yt_face_detector_get_default_param(yt_handle handle, yt_face_detector_param *param);

/**
 * @brief 检测接口，单帧图片检测
 *
 * @param[in] handle 实例句柄
 * @param[in] image 图片，图片类型：YT_IMG_BGR_8UC3 or YT_IMG_RGB_8UC3
 * @param[in] param 自定义的参数
 * @param[out] tracked_faces 检测到的人脸信息
 * @param[out] tracked_faces_count 检测到的人脸数量
 * @return YT_SUCCESS：成功，其他：失败
 */
YT_PUBLIC int yt_face_detector_detect(yt_handle handle, const yt_image image, const yt_face_detector_param param,
                                      yt_rect **rects, int *count);

/**
 * @brief 释放检测结果
 *
 * @param[in] rects
 */
YT_PUBLIC void yt_face_detector_release_rects(yt_rect *rects);

#endif  // _YT_FACE_DETECTOR_H_
