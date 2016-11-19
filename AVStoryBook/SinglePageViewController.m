//
//  SinglePageViewController.m
//  AVStoryBook
//
//  Created by Suvan Ramani on 2016-11-19.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "SinglePageViewController.h"

@interface SinglePageViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *singlePageImageView;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property (nonatomic, strong) AVAudioRecorder *audioRecorder;

@end

@implementation SinglePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}


- (IBAction)recordButton:(UIButton *)sender {
}

- (IBAction)selectImageButton:(UIButton *)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

#pragma mark - Set Up

- (void)setUpView {
    self.singlePageImageView.layer.borderWidth = 2;}

@end
