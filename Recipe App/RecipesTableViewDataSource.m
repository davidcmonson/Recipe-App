//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Julien Guanzon on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"



@implementation RecipesTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"recipeCell"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *recipeCell = [tableView dequeueReusableCellWithIdentifier:@"recipeCell"];
    
    recipeCell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    return recipeCell;
}



@end
