//
//  PINAnimatedImageView+PINRemoteImage.m
//  Pods
//
//  Created by Garrett Moon on 4/19/18.
//

#import "PINAnimatedImageView+PINRemoteImage.h"

#import "PINAnimatedImage.h"

@implementation PINAnimatedImageView (PINRemoteImage)

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
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options:options processorKey:processorKey processor:processor];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options:options placeholderImage:placeholderImage processorKey:processorKey processor:processor];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url options:options  processorKey:processorKey processor:processor completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:@[url] options:options placeholderImage:placeholderImage processorKey:processorKey processor:processor completion:completion];
}

- (void)pin_setImageFromURLs:(NSArray *)urls options:(PINRemoteImageManagerDownloadOptions)options
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls options:options];
}

- (void)pin_setImageFromURLs:(NSArray *)urls options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls options:options placeholderImage:placeholderImage];
}

- (void)pin_setImageFromURLs:(NSArray *)urls options:(PINRemoteImageManagerDownloadOptions)options placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls options:options placeholderImage:placeholderImage completion:completion];
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
    if (result.alternativeRepresentation && [result.alternativeRepresentation isKindOfClass:[PINCachedAnimatedImage class]]) {
        self.animatedImage = (PINCachedAnimatedImage *)result.alternativeRepresentation;
    } else if (result.image) {
        self.image = result.image;
    }
}

- (void)pin_clearImages
{
    self.animatedImage = nil;
    self.image = nil;
}

- (BOOL)pin_ignoreGIFs
{
    return NO;
}

@end
