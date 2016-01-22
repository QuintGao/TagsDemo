//
//  TagsViewCell.m
//  TagsDemo
//
//  Created by Administrator on 16/1/21.
//  Copyright © 2016年 Administrator. All rights reserved.
//

#import "TagsViewCell.h"

@implementation TagsViewCell

+ (id)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"tags";
    TagsViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[TagsViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

- (void)setTagsFrame:(TagsFrame *)tagsFrame
{
    _tagsFrame = tagsFrame;
    
    for (NSInteger i=0; i<tagsFrame.tagsArray.count; i++) {
        UIButton *tagsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [tagsBtn setTitle:tagsFrame.tagsArray[i] forState:UIControlStateNormal];
        [tagsBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        tagsBtn.titleLabel.font = TagsTitleFont;
        tagsBtn.backgroundColor = [UIColor whiteColor];
        tagsBtn.layer.borderWidth = 1;
        tagsBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
        tagsBtn.layer.cornerRadius = 4;
        tagsBtn.layer.masksToBounds = YES;
        
        tagsBtn.frame = CGRectFromString(tagsFrame.tagsFrames[i]);
        
        [self.contentView addSubview:tagsBtn];
    }
    
    
}

@end
