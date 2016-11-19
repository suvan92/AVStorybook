//
//  SinglePageViewController.m
//  AVStoryBook
//
//  Created by Suvan Ramani on 2016-11-19.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "SinglePageViewController.h"
#import "SinglePageData.h"

@interface SinglePageViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *singlePageImageView;

@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property (nonatomic, strong) AVAudioRecorder *audioRecorder;
@property (nonatomic, strong) SinglePageData *pageData;

@end

@implementation SinglePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
    
    self.pageData = [[SinglePageData alloc] init];
}


- (IBAction)recordButton:(UIButton *)sender {
}

- (IBAction)selectImageButton:(UIButton *)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

#pragma mark - Image Picker

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    UIImage *imagePicked = info[UIImagePickerControllerOriginalImage];
    self.pageData.pageImage = imagePicked;
    self.singlePageImageView.image = imagePicked;
    self.singlePageImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Set Up

- (void)setUpView {
    self.singlePageImageView.layer.borderWidth = 2;
}

- (void)setUpAudioStuff {
    self.audioPlayer = [[AVAudioPlayer alloc] init];
}

@end
