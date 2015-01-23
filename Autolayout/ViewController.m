
//  ViewController.m
//  Autolayout
//
//  Created by Galiev Aynur on 18.01.15.
//  Copyright (c) 2015 FT. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
@property (strong, nonatomic) UIImage* image;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = UITableViewAutomaticDimension;//Automatic cell's height counting
    self.image = [UIImage imageNamed:@"Strawberry"];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationDidChanged) name:UIDeviceOrientationDidChangeNotification object:nil];
}

-(void) orientationDidChanged {
    [self.tableView reloadData];
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(TableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell* cell= [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.container.layer.shadowColor = [UIColor colorWithRed:39/255 green:22/255 blue:255/255 alpha:1.0].CGColor;
    cell.container.layer.shadowOffset = CGSizeMake(5, 5);
    cell.container.layer.shadowOpacity = 1;
    cell.container.layer.shadowRadius = 1.0;
    cell.ownerImageView.image =self.image;
    cell.ownerRatio.constant = self.image.size.width/self.image.size.height;
    cell.firstLabel.text = @"aaaa";
    cell.secondLabel.text = @"bbbbbbb";
    cell.thirdLabel.text = @"ccccc";
    cell.postLabel.text = @"dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd";
    cell.postImageView.image = self.image;
    cell.postRatio.constant = self.image.size.height/self.image.size.width;
    cell.likesImageView.image = self.image;
    cell.likesLabel.text = @"666";
    
    [cell setNeedsUpdateConstraints];//
    [cell updateConstraintsIfNeeded];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
