//
//  TableViewCell.h
//  Autolayout
//
//  Created by Galiev Aynur on 18.01.15.
//  Copyright (c) 2015 FT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdLabel;
@property (weak, nonatomic) IBOutlet UILabel *postLabel;
@property (weak, nonatomic) IBOutlet UIImageView *postImageView;
@property (weak, nonatomic) IBOutlet UILabel *likesLabel;
@property (weak, nonatomic) IBOutlet UIImageView *likesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *ownerImageView;
@property (weak, nonatomic) IBOutlet UIView *container;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ownerRatio;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *postRatio;

@end
