//
//  EXTableViewController.m
//  TableViewExample
//
//  Created by Thiago Ramos on 9/30/14.
//  Copyright (c) 2014 br.com.exemplo.tableview. All rights reserved.
//

#define CELL_ID @"ExampleTableViewCellID"
#define CELL_HEIGHT 44.0f
#define TABLE_VIEW_CELL_WIDTH 300.0f
#define PADDING 20.0f
#define CELL_FONT [UIFont systemFontOfSize:17]

#import "EXTableViewController.h"

@implementation EXTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.listaDescricao = [NSArray arrayWithObjects:@"Eiiitaaa Mainhaaa!! Esse Lorem ipsum é só na sacanageeem!! E que abundância meu irmão viuu!! Assim você vai matar o papai. Só digo uma coisa, Domingo ela não vai! Danadaa!! Vem minha odalisca, agora faz essa cobra coral subir!!! Pau que nasce torto, Nunca se endireita. Tchannn!! Tchannn!! Tu du du pááá! Eu gostchu muitchu, heinn! danadinha! Mainhaa! Agora use meu lorem ipsum ordinária!!! Vem Gostosa!!!", @"Teste de tamanho sem o cumpadi ipsum", @"Mas que abundância meu irmãooo!!! Esse é seu Layout danadaaa!??? Sabe de nada inocente!! Vem, vem, vem ordinária, provar do meu dendê!! ", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listaDescricao count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExTableViewCell *cell = (ExTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CELL_ID];
    cell.descricaoLabel.text = [self.listaDescricao objectAtIndex:indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSDictionary *attributes = @{NSFontAttributeName: CELL_FONT};
    NSString *descricao = [self.listaDescricao objectAtIndex:indexPath.row];
    CGRect boundingRect = [descricao boundingRectWithSize:CGSizeMake(TABLE_VIEW_CELL_WIDTH, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:attributes context:nil];
    
    CGFloat height = MAX(boundingRect.size.height, 44.0f);
    return height;
}

@end
