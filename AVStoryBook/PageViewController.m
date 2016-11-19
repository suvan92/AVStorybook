//
//  PageViewController.m
//  AVStoryBook
//
//  Created by Suvan Ramani on 2016-11-19.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "PageViewController.h"
#import "SinglePageViewController.h"
#import "SinglePageData.h"

@interface PageViewController () <UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@end

@implementation PageViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = self;
    
    SinglePageViewController *page = [self.storyboard instantiateViewControllerWithIdentifier:@"single-page-VC"];
    
    [self setViewControllers:@[page] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    SinglePageViewController *page;
    
    return page;
}


-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    SinglePageViewController *page;
    
    return page;
}


@end
