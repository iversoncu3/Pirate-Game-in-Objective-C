//
//  ViewController.m
//  Pirate Game
//
//  Created by Baran on 9/17/15.
//  Copyright (c) 2015 com.MyCodeIsWorking. All rights reserved.
//

#import "ViewController.h"
#import "Tile.h"
#import "Char.h"
#import "Weapon.h"
#import "Armor.h"
#import "Boss.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *resetButton;
+(NSMutableArray*) createTile;

@end

@implementation ViewController

@synthesize imageView,healthLabel,damageLabel,weaponLabel,armorLabel,storyLabel,button,northButton,southButton,eastButton,westButton,resetButton;



NSMutableArray* array;
Char *gamer;
Weapon*gamersWeapon;
Armor*gamersArmor;
int location;
int x=1;
int y=1;

- (void)viewDidLoad {
    [super viewDidLoad];
   array=[ViewController createTile];
    [self reset ];
    
    gamer =[[Char alloc]init];
    gamer.health=100;
    gamer.damage=100;
   
    gamersWeapon=[[Weapon alloc]init];
    gamersWeapon.name=@"Sword";
    gamersWeapon.damage=10;
    
    gamer.weapon=gamersWeapon;
    
    gamersArmor =[[Armor alloc]init];
    gamersArmor.name=@"Golden Suit";
    gamersArmor.health=25;
   
    gamer.armor=gamersArmor;
    
    [self goruntule];
}
-(void) goruntule{
    armorLabel.text=[NSString stringWithFormat:@"Armor : %@",
gamer.armor.name];
    weaponLabel.text=[NSString stringWithFormat:@"Weapon : %@",
gamer.weapon.name ];
    healthLabel.text=[NSString stringWithFormat:@"Health : %d",gamer.health];
    damageLabel.text=[NSString stringWithFormat:@"Damage : %d",gamer.damage];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
+(NSMutableArray *) createTile{
    
    Tile*dizi[12];
    
    dizi[0]=[Tile new];
    dizi[0].story=@"Bu topraklar baranin En sevdigi topraklardi bu topraklardan uzak dur ey cocuk";
    dizi[0].x=0;
    dizi[0].y=0;
    dizi[0].background=[UIImage imageNamed:@"PirateStart.jpg"];
    dizi[0].buttonTitle=@"Take The sword";
 
    
    dizi[1]=[Tile new];
    dizi[1].story=@"Bi daha seni buralarda gormuyum olum";
    dizi[1].x=0;
    dizi[1].y=1;
    dizi[1].background=[UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    dizi[1].buttonTitle=@"Tisko";
    
    dizi[2]=[Tile new];
    dizi[2].story=@"Kimsin lan sen";
    dizi[2].x=0;
    dizi[2].y=2;
    dizi[2].background=[UIImage imageNamed:@"PirateAttack.jpg"];
    dizi[2].buttonTitle=@"Bu diyarlarda ki yigitler kendilerini sizin gibi cakallara yedirmezler aq";
    
    dizi[3]=[Tile new];
    dizi[3].story=@"Bi daha seni buralarda gormuyum olum";
    dizi[3].x=0;
    dizi[3].y=3;
    dizi[3].background=[UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    dizi[3].buttonTitle=@"Tisko";
    
    dizi[4]=[Tile new];
    dizi[4].story=@"Bi daha seni buralarda gormuyum olum";
    dizi[4].x=1;
    dizi[4].y=0;
    dizi[4].background=[UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    dizi[4].buttonTitle=@"Tisko";
    
  
    dizi[5]=[Tile new];
    dizi[5].x=1;
    dizi[5].y=1;
    dizi[5].background=[UIImage imageNamed:@"PirateParrot.jpg"];
    dizi[5].buttonTitle=@"Ana Davsan yerim ki ben bunu ";
     dizi[5].story=@"Ana Davsan yerim ki ben bunu ";
    dizi[6]=[Tile new];
    dizi[6].x=1;
    dizi[6].y=2;
    dizi[6].background=[UIImage imageNamed:@"PiratePlank.jpg"];
    dizi[6].buttonTitle=@"Bu ne la boyle eski pusku ezerim ben bunu ";
     dizi[6].story=@"Bu ne la boyle eski pusku ezerim ben bunu ";
    dizi[7]=[Tile new];
    dizi[7].x=1;
    dizi[7].y=3;
    dizi[7].background=[UIImage imageNamed:@"PirateShipBattle.jpeg"];
    dizi[7].buttonTitle=@"Yelkenler bicilecek dim";
    dizi[7].story=@"Yelkenler bicilecek dim";
    dizi[8]=[Tile new];
    dizi[8].x=2;
    dizi[8].y=0;
    dizi[8].background=[UIImage imageNamed:@"PirateTreasure.jpeg"];
    dizi[8].buttonTitle=@"Ana gomu cikti ya la";
    dizi[8].story=@"Ana gomu cikti ya la";
    
    dizi[9]=[Tile new];
    dizi[9].x=2;
    dizi[9].y=1;
    dizi[9].background=[UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    dizi[9].buttonTitle=@"Ana gomu cikti 2 ya la";
    dizi[9].story=@"Ana gomu cikti 2 ya la";
    
    dizi[10]=[Tile new];
    dizi[10].x=2;
    dizi[10].y=2;
    dizi[10].background=[UIImage imageNamed:@"PirateWeapons.jpeg"];
    dizi[10].buttonTitle=@"Olum aha silah lan";
    dizi[10].story=@"Olum aha silah lan";
    
    dizi[11]=[Tile new];
    dizi[11].x=2;
    dizi[11].y=3;
    dizi[11].background=[UIImage imageNamed:@"PirateBoss.jpeg"];
    dizi[11].buttonTitle=@"Anani siktim cocuk";
    dizi[11].story=@"Anani siktim cocuk";
  
    
    
    
    NSMutableArray *array=[NSMutableArray new];
    for(int i=0;i<12;i++){
        [array addObject :dizi[i]];
    
    }
    
    return array;
}


- (IBAction)ilerle:(id)sender {
    if ((x>=0)&&(x < 2)) {
         x++;
        if(x==2){
               northButton.hidden =YES;
            
        }
        else{
        northButton.hidden =NO;
        southButton.hidden=NO;
            
        }
    }
   
   
    
    int location=findLocation();
    NSLog(@"N %d %d",x,y);
    Tile*a=[array objectAtIndex:location];
    self.imageView.image=a.background;
    self.storyLabel.text=a.story;
    self.button.titleLabel.text=a.buttonTitle;
}
int findLocation(){
  
    
    if(x==0&&y==0)
        location=0;
    else if(x==0&&y==1)
        location=1;
    else if(x==0&&y==2)
        location=2;
    else if(x==0&&y==3)
        location=3;
    else if(x==1&&y==0)
        location=4;
    else if(x==1&&y==1)
        location=5;
    else if(x==1&&y==2)
        location=6;
    else if(x==1&&y==3)
        location=7;
    else if(x==2&&y==0)
        location=8;
    else if(x==2&&y==1)
        location=9;
    else if(x==2&&y==2)
        location=10;
    else if(x==2&&y==3)
        location=11;
    return location;
}
- (IBAction)east:(id)sender {
    if ((y>=0)&&(y<3)) {
        y++;
        if(y==3)
            eastButton.hidden =YES;
        else{
            eastButton.hidden =NO;
            westButton.hidden=NO;
        }
    }
    
    
    
    int location=findLocation();
    NSLog(@"N %d %d",x,y);
   
    Tile*a=[array objectAtIndex:location];
    self.imageView.image=a.background;
    self.storyLabel.text=a.story;
    self.button.titleLabel.text=a.buttonTitle;
}
- (IBAction)south:(id)sender {
    if ((x>0)&&(x <=2)) {
        x--;
        if(x==0){
            southButton.hidden =YES;
        }
        else{
        southButton.hidden =NO;
        northButton.hidden=NO;
        }
    }
    
    
    int location=findLocation();
   NSLog(@"N %d %d",x,y);
    Tile*a=[array objectAtIndex:location];
    self.imageView.image=a.background;
    self.storyLabel.text=a.story;
    self.button.titleLabel.text=a.buttonTitle;
}
- (IBAction)west:(id)sender {
    if ((y>0)&&(y <=3)) {
        y--;
        if(y==0){
             westButton.hidden =YES;
        }
        else{
        westButton.hidden =NO;
        eastButton.hidden=NO;
        }
    }
    
    
    
    int location=findLocation();
    NSLog(@"N %d %d",x,y);
    Tile*a=[array objectAtIndex:location];
    self.imageView.image=a.background;
    self.storyLabel.text=a.story;
    self.button.titleLabel.text=a.buttonTitle;
}
- (IBAction)reset:(id)sender {
    [self reset];
}
-(void)reset{
    x=1;
    y=1;
    northButton.hidden=NO;
    westButton.hidden=NO;
    eastButton.hidden=NO;
    southButton.hidden=NO;
    
    gamer.health=100;
    gamer.damage=100;
    
    gamersWeapon.name=@"Sword";
    gamersWeapon.damage=10;
    
    gamer.weapon=gamersWeapon;
    
    gamersArmor.name=@"Golden Suit";
    gamersArmor.health=25;
    
    gamer.armor=gamersArmor;
    
    Tile*a=[array objectAtIndex:5];
    self.imageView.image=a.background;
    self.storyLabel.text=a.story;
    self.button.titleLabel.text=a.buttonTitle;
    [self goruntule];
}
@end
