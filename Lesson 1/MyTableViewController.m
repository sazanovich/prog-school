//
//  MyTableViewController.m
//  Lesson 1
//
//  Created by Prokofev Ruslan on 29.10.15.
//  Copyright © 2015 Prokofev Ruslan. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"SliderCell" bundle:nil] forCellReuseIdentifier:@"sliderCell"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell = nil;
    
    if (indexPath.row % 2 == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"switch_cell"];;
        UISwitch *switcher = [cell viewWithTag:666];
        [switcher addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
    } else {
        cell =  [tableView dequeueReusableCellWithIdentifier:@"sliderCell"];
        UISlider *slider = [cell viewWithTag:333];
        [slider addTarget:self action:@selector(sliderChange:) forControlEvents:UIControlEventValueChanged];
    }
    
    
    
//    [cell.detailTextLabel setText:@"my text"];
    return cell;
}
- (void) switchChange:(UISwitch*)switcher
{
    if (switcher.on) {
        self.title = @"Бугагаагаг";
        
    } else {
            self.title = @":(";
    }
}
- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [[NSString alloc]initWithFormat:@"%d",section];
}
- (void) sliderChange:(UISlider*)slider
{
    self.title = [NSString stringWithFormat:@"%d",(int)slider.value];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Мы с вами такие добрые" delegate:nil cancelButtonTitle:@"Отмена" otherButtonTitles:@"Пышь", @"1",@"2",@"3",@"4",@"4",@"5",@"5",@"4",@"4",@"5",@"5",@"4",@"4",@"5",@"5",@"4",@"4",@"5",@"5",@"4",@"4",@"5",@"5",@"4",@"4",@"5",@"5",	 nil];
    [alert show];
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
