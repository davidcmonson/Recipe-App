//
//  DetailViewController.m
//  Recipe App
//
//  Created by Julien Guanzon on 2/5/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (nonatomic, assign) float label2Height;

@property (nonatomic, assign) float compoundingHeight;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 2.5);
    [self.view addSubview:scrollView];
    scrollView.backgroundColor = [UIColor whiteColor];
    
    self.title = [RARecipes titleAtIndex:self.selectedRow];

    
    
   
    UILabel *label = [UILabel new];
    label.frame = CGRectMake(10, 0, self.view.frame.size.width - 20, 10);
    [scrollView addSubview:label];
    label.text = [RARecipes descriptionAtIndex:self.selectedRow];
    label.numberOfLines = 0;
    [label sizeToFit];
    float labelHeight = label.frame.size.height;
//    label.backgroundColor = [UIColor grayColor];
    
    
    
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.selectedRow]; i++) {
        UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, labelHeight + i * 20, (self.view.frame.size.width - 20) * .75, 20)];
        label2.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.selectedRow];
//        label2.backgroundColor = [UIColor whiteColor];
        label2.numberOfLines = 0;
        [label2 sizeToFit];
        float label2Height = label2.frame.size.height * i;
        self.label2Height = label2Height;
          [scrollView addSubview:label2];
    }
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.selectedRow]; i++) {
        UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width) - 100, labelHeight + i * 20, (self.view.frame.size.width - 20) * .25, self.view.frame.size.height)];
        label3.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.selectedRow];
//        label3.backgroundColor = [UIColor whiteColor];
        label3.numberOfLines = 0;
        [label3 sizeToFit];
        [scrollView addSubview:label3];
    }
    
    
    
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.selectedRow]; i++) {
        UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width) - 100, labelHeight + i * 20, (self.view.frame.size.width - 20) * .25, self.view.frame.size.height)];
        label3.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.selectedRow];
//        label3.backgroundColor = [UIColor whiteColor];
        label3.numberOfLines = 0;
        [label3 sizeToFit];
        [scrollView addSubview:label3];
    }
    
    for (int i = 0; i < [RARecipes directionsAtIndex:self.selectedRow].count; i++) {
        UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(10, labelHeight + self.label2Height + 20 + self.compoundingHeight, self.view.frame.size.width - 20, self.view.frame.size.height)];
        label4.text = [NSString stringWithFormat:@"%@",[RARecipes directionsAtIndex:self.selectedRow][i]];
//        label4.backgroundColor = [UIColor whiteColor];
        label4.numberOfLines = 0;
        [label4 sizeToFit];
        self.compoundingHeight += label4.frame.size.height;
        [scrollView addSubview:label4];
    }
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
