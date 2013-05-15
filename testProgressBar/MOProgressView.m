//
//  MOProgressView.m
//  testProgressBar
//
//  Created by notedit on 5/15/13.
//  Copyright (c) 2013 motiky. All rights reserved.
//

#import "MOProgressView.h"

@implementation MOProgressView
{
    UIImageView *_trackView;
    UIImageView *_progressbgView;
    UIView  *_progressView;
}


@synthesize progress = _progress;

-(id)initWithFrame:(CGRect)frame backgroundImage:(UIImage *)backgroundImage foregroundImage:(UIImage *)foregroundImage
{
    self = [super initWithFrame:frame];
    if (self) {
        _trackView = [[UIImageView alloc] initWithFrame:self.bounds];
        _trackView.image = backgroundImage;
        _progressbgView = [[UIImageView alloc] initWithFrame:self.bounds];
        _progressbgView.image = foregroundImage;
        _progressView = [[UIView alloc] initWithFrame:self.bounds];
        _progressView.clipsToBounds = YES;
        [_progressView addSubview:_progressbgView];
        [self addSubview:_trackView];
        
        [self addSubview:_progressView];
    }
    
    return self;
}

 

-(void)setProgress:(double)progress
{
    
    if (_progress == progress) {
        return;
    }
    _progress = progress;
    CGSize size = self.frame.size;
    _progressView.frame = CGRectMake(0, 0, size.width * progress, size.height);

}

@end
