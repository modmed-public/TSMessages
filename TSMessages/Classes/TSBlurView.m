//
//  TSBlurView.m
//  Pods
//
//  Created by Felix Krause on 20.08.13.
//
//

#import "TSBlurView.h"
#import <QuartzCore/QuartzCore.h>

@interface TSBlurView ()

@property (nonatomic, strong) UIVisualEffectView *blurEffectView;
@property (nonatomic, strong) UIView *tintOverlay;

@end

@implementation TSBlurView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupBlurEffect];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupBlurEffect];
    }
    return self;
}

- (void)setupBlurEffect
  {
      UIBlurEffect *blurEffect;
      if (@available(iOS 13.0, *)) {
          blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemMaterial];
      } else {
          // UIBlurEffectStyleLight/Dark available since iOS 8
          blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
      }

      _blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
      _blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
      _blurEffectView.frame = self.bounds;
      [self addSubview:_blurEffectView];

      _tintOverlay = [[UIView alloc] initWithFrame:self.bounds];
      _tintOverlay.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
      _tintOverlay.alpha = 0.85;
      [self addSubview:_tintOverlay];
  }

- (void)setBlurTintColor:(UIColor *)blurTintColor
{
    self.tintOverlay.backgroundColor = blurTintColor;
}

- (UIColor *)blurTintColor
{
    return self.tintOverlay.backgroundColor;
}

@end

