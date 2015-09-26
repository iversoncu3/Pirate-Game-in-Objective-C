//
//  Weapon.h
//  Pirate Game
//
//  Created by Baran on 9/17/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weapon : NSObject
@property(nonatomic,strong)NSString *name;
@property(readwrite)int damage;

@end
