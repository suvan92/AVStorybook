//
//  SinglePageData.h
//  AVStoryBook
//
//  Created by Suvan Ramani on 2016-11-19.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SinglePageData : NSObject

@property (nonatomic, strong) UIImage *pageImage;
@property (nonatomic, strong) AVAudioPlayer *pageAudioFile;

@end
