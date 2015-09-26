//
//  Tile.h
//  Pirate Game
//
//  Created by Baran on 9/17/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

@interface Tile : NSObject
@property (nonatomic,strong)NSString *story;
@property (nonatomic,strong)UIImage *background;
@property(nonatomic,strong)NSString*buttonTitle;
@property(readwrite)int x,y;
@end
