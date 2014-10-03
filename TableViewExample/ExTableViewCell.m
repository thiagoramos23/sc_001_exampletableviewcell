//
//  ExTableViewCell.m
//  TableViewExample
//
//  Created by Thiago Ramos on 10/3/14.
//  Copyright (c) 2014 br.com.exemplo.tableview. All rights reserved.
//

#import "ExTableViewCell.h"

@implementation ExTableViewCell

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSDictionary *attributes = @{NSFontAttributeName: self.descricaoLabel.font};
    CGRect boundingRect = [self.descricaoLabel.text boundingRectWithSize:CGSizeMake(self.contentView.frame.size.width, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:attributes context:nil];
    
    self.descricaoLabel.frame = CGRectMake(self.descricaoLabel.frame.origin.x, self.descricaoLabel.frame.origin.y, self.contentView.frame.size.width, boundingRect.size.height);
}
@end
