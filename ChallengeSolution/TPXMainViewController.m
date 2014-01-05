//
//  TPXMainViewController.m
//  ChallengeSolution
//
//  Created by pixelhacker on 1/5/14.
//  Copyright (c) 2014 tinypixel. All rights reserved.
//

#import "TPXMainViewController.h"

@interface TPXMainViewController ()

@end

@implementation TPXMainViewController

- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 2;
    } else if (section == 1){
        return 1;
    } else {
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    NSString *testLabel;
    
    if(indexPath.section == 0){
        cell.textLabel.textColor = [UIColor redColor];

        testLabel = @"I am in section 0";
    } else if(indexPath.section == 1){
        cell.textLabel.textColor = [UIColor blueColor];
        testLabel = @"another section";
    } else {
        cell.textLabel.textColor = [UIColor yellowColor];
        testLabel = [NSString stringWithFormat:@"cell %@", [NSString stringWithFormat:@"%i", indexPath.row]];
        
    }
    
    cell.textLabel.text = testLabel;
    
    return cell;
}

@end
