//
//  UIImageView+PINRemoteImage.m
//  Pods
//
//  Created by Garrett Moon on 8/17/14.
//
//

#import "PINImageView+PINRemoteImage.h"

@implementation PINImageView (PINRemoteImage)

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options placeholderImage:placeholderImage];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options placeholderImage:placeholderImage completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options processorKey:processorKey processor:processor];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options placeholderImage:placeholderImage processorKey:processorKey processor:processor];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options: options processorKey:processorKey processor:processor completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:url?@[url]:nil options: options placeholderImage:placeholderImage processorKey:processorKey processor:processor completion:completion];
}

- (void)pin_setImageFromURLs:(NSArray <NSURL *> *)urls options:(PINRemoteImageManagerDownloadOptions)options
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls options: options];
}

- (void)pin_setImageFromURLs:(NSArray <NSURL *> *)urls options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls options: options placeholderImage:placeholderImage];
}

- (void)pin_setImageFromURLs:(NSArray <NSURL *> *)urls options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls options: options placeholderImage:placeholderImage completion:completion];
}

- (void)pin_cancelImageDownload
{
    [PINRemoteImageCategoryManager cancelImageDownloadOnView:self];
}

- (NSUUID *)pin_downloadImageOperationUUID
{
    return [PINRemoteImageCategoryManager downloadImageOperationUUIDOnView:self];
}

- (void)pin_setDownloadImageOperationUUID:(NSUUID *)downloadImageOperationUUID
{
    [PINRemoteImageCategoryManager setDownloadImageOperationUUID:downloadImageOperationUUID onView:self];
}

- (BOOL)pin_updateWithProgress
{
    return [PINRemoteImageCategoryManager updateWithProgressOnView:self];
}

- (void)setPin_updateWithProgress:(BOOL)updateWithProgress
{
    [PINRemoteImageCategoryManager setUpdateWithProgressOnView:updateWithProgress onView:self];
}

- (void)pin_setPlaceholderWithImage:(PINImage *)image
{
    self.image = image;
}

- (void)pin_updateUIWithRemoteImageManagerResult:(PINRemoteImageManagerResult *)result
{
    if (result.image) {
        self.image = result.image;

#if PIN_TARGET_IOS
        [self setNeedsLayout];
#elif PIN_TARGET_MAC
        [self setNeedsLayout:YES];
#endif
    }
}

- (void)pin_clearImages
{
    self.image = nil;
    
#if PIN_TARGET_IOS
    [self setNeedsLayout];
#elif PIN_TARGET_MAC
    [self setNeedsLayout:YES];
#endif
}

- (BOOL)pin_ignoreGIFs
{
    return YES;
}

@end
