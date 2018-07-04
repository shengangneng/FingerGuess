//
//  FGHomeViewController.m
//  FingerGuess
//  主页
//  Created by shengangneng on 2018/6/29.
//  Copyright © 2018年 shengangneng. All rights reserved.
//

#import "FGHomeViewController.h"

@interface FGHomeViewController ()

@property (nonatomic, strong) UIView *leftItemView;
@property (nonatomic, strong) UIImageView *leftItem0;
@property (nonatomic, strong) UIImageView *leftItem1;
@property (nonatomic, strong) UIImageView *leftItem2;
@property (nonatomic, strong) UIImageView *leftItem3;
@property (nonatomic, strong) UIImageView *leftItem4;
@property (nonatomic, strong) UIImageView *leftItem5;

@end

@implementation FGHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupAttributes];
    [self setupSubViews];
    [self setupConstraints];
}

- (void)viewDidLayoutSubviews {
    double duration = 0.2;
    double delay = 0;
    for (UIView *view in self.leftItemView.subviews) {
        if ([view isKindOfClass:[UIImageView class]]) {
            [self animateWithDuration:duration delay:delay itemView:view];
            delay+=duration;
        }
    }
}

- (void)animateWithDuration:(double)duration delay:(double)delay itemView:(UIView *)itemView {
    itemView.layer.transform = [self getTransformWithAngle:2.0];
    [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionCurveEaseIn animations:^{
        itemView.layer.transform = [self getTransformWithAngle:0];
        [self.view layoutIfNeeded];
    } completion:nil];
}

- (CATransform3D)getTransformWithAngle:(CGFloat)angle {
    CGFloat offset = 100 / 2;
    
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = -0.002;
    transform = CATransform3DTranslate(transform, -offset, 0, 0);
    transform = CATransform3DRotate(transform, angle, 0, 1, 0);
    transform = CATransform3DTranslate(transform, offset, 0, 0);
    return transform;
}

- (void)setupAttributes {
}

- (void)setupSubViews {
    [self.view addSubview:self.leftItemView];
    [self.leftItemView addSubview:self.leftItem0];
    [self.leftItemView addSubview:self.leftItem1];
    [self.leftItemView addSubview:self.leftItem2];
    [self.leftItemView addSubview:self.leftItem3];
    [self.leftItemView addSubview:self.leftItem4];
    [self.leftItemView addSubview:self.leftItem5];
}

- (void)setupConstraints {
    [self.leftItemView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.equalTo(self.view);
        make.width.equalTo(@100);
    }];
    [self.leftItem0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.leftItemView);
        make.leading.equalTo(self.leftItemView.mas_leading);
        make.width.height.equalTo(@100);
    }];
    [self.leftItem1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leftItemView);
        make.leading.equalTo(self.leftItemView.mas_leading);
        make.top.equalTo(self.leftItem0.mas_bottom);
        make.width.height.equalTo(@100);
    }];
    [self.leftItem2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leftItemView);
        make.leading.equalTo(self.leftItemView.mas_leading);
        make.top.equalTo(self.leftItem1.mas_bottom);
        make.width.height.equalTo(@100);
    }];
    [self.leftItem3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leftItemView);
        make.leading.equalTo(self.leftItemView.mas_leading);
        make.top.equalTo(self.leftItem2.mas_bottom);
        make.width.height.equalTo(@100);
    }];
    [self.leftItem4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leftItemView);
        make.leading.equalTo(self.leftItemView.mas_leading);
        make.top.equalTo(self.leftItem3.mas_bottom);
        make.width.height.equalTo(@100);
    }];
    [self.leftItem5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.leftItemView);
        make.leading.equalTo(self.leftItemView.mas_leading);
        make.top.equalTo(self.leftItem4.mas_bottom);
        make.width.height.equalTo(@100);
    }];
}

- (UIView *)leftItemView {
    if (!_leftItemView) {
        _leftItemView = [[UIView alloc] init];
        _leftItemView.backgroundColor = kWhiteColor;
    }
    return _leftItemView;
}

- (UIImageView *)leftItem0 {
    if (!_leftItem0) {
        _leftItem0 = [[UIImageView alloc] init];
        _leftItem0.backgroundColor = kRedColor;
    }
    return _leftItem0;
}
- (UIImageView *)leftItem1 {
    if (!_leftItem1) {
        _leftItem1 = [[UIImageView alloc] init];
        _leftItem1.backgroundColor = kYellowColor;
    }
    return _leftItem1;
}
- (UIImageView *)leftItem2 {
    if (!_leftItem2) {
        _leftItem2 = [[UIImageView alloc] init];
        _leftItem2.backgroundColor = kBlueColor;
    }
    return _leftItem2;
}
- (UIImageView *)leftItem3 {
    if (!_leftItem3) {
        _leftItem3 = [[UIImageView alloc] init];
        _leftItem3.backgroundColor = kLightGrayColor;
    }
    return _leftItem3;
}
- (UIImageView *)leftItem4 {
    if (!_leftItem4) {
        _leftItem4 = [[UIImageView alloc] init];
        _leftItem4.backgroundColor = kBlackColor;
    }
    return _leftItem4;
}
- (UIImageView *)leftItem5 {
    if (!_leftItem5) {
        _leftItem5 = [[UIImageView alloc] init];
        _leftItem5.backgroundColor = kRedColor;
    }
    return _leftItem5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
