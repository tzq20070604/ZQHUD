//
//  MFVLabel.h
//  mifengwaiqin
//
//  Created by tzq on 2019/1/5.
//  Copyright © 2019 wanbei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger,VerticalAlignment){
    VerticalAlignmentTop,
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom
};
@interface MFVLabel : UILabel
@property (nonatomic,assign) VerticalAlignment verticalAlignment;
@end

NS_ASSUME_NONNULL_END
