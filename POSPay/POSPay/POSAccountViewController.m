//
//  POSAccountViewControllerTableViewController.m
//  POSPay
//
//  Created by LiuZhiqi on 15-1-5.
//  Copyright (c) 2015年 mqq.com. All rights reserved.
//
#import "POSAboutProductController.h"
#import "POSAccountViewController.h"
#import "POSAccountTopCell.h"
@interface POSAccountViewController ()

@end

@implementation POSAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCellInfo];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
#warning 这几个backgroundcolor 和tint？？ 
    [self.navigationController.navigationBar setBarTintColor: [UIColor cyanColor]] ;
 
    [self.tableView registerNib:[UINib nibWithNibName:@"POSAccountTopCell" bundle:nil] forCellReuseIdentifier:@"POSAccountViewControllerTopCell"];
//    [_infoTabelView registerNib:[UINib nibWithNibName:@"LRBPathTabelViewCell" bundle:nil] forCellReuseIdentifier:@"PathTableViewId"];
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setCellInfo
{
    self.cellInfo=@[@[@"name",@"可提款余额",@"不可用余额"],@[@"绑定银行卡",@"提款到我的银行卡"],@[@"交易记录"],@[@"我的刷卡器",@"充值冻结刷卡器保证金"],@[@"我的订单"],@[@"完善账号信息",@"实名认证",@"高级认证",@"修改密码",@"安全退出"]];

}

- (IBAction)detailBarAction:(id)sender {
    POSAboutProductController *pushView=[[POSAboutProductController alloc] init];
    pushView.hidesBottomBarWhenPushed=YES;
  //  [pushView.tabBarController setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:pushView animated:YES];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return self.cellInfo.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[self.cellInfo objectAtIndex:section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
    //cell.
    if(indexPath.section==0&&indexPath.row==0)
    {
        
        POSAccountTopCell * cell=[self.tableView dequeueReusableCellWithIdentifier:@"POSAccountViewControllerTopCell"];
        cell.nameLabel.text=@"name";
        cell.phoneLabel.text=@"123456789";
        cell.balanceLabel.text=@"30000";
        return cell;
    }
#warning 只能初始化设置style？
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"POSAccountViewControllerCell" ];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"POSAccountViewControllerTableViewControllerId"];
    }
    
    
    
    cell.textLabel.text=[[self.cellInfo objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    // Configure the cell...
    if(indexPath.section==0)
    {
        if(indexPath.row==1){
            cell.detailTextLabel.text=@"20000";
        }
        if(indexPath.row==2){
            cell.detailTextLabel.text=@"10000";
            
        }
    }
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0&&indexPath.row==0) {
        return 85;
    }
    return 44;
}
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
