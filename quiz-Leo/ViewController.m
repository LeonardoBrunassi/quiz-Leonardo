//
//  ViewController.m
//  quiz-Leo
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 23/02/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pergunta,resposta, perguntas, respostas, imagens, imagem;


- (void)viewDidLoad {
    perguntas = @[@"Qual time ganhou a libertadores de 2012?", @"Quanto é 7 + 7?", @"Qual é a cor do sol?"];
    
    respostas = @[@"Corinthians", @"14", @"Amarelo"];
    
    imagens = @[@"Corinthians_simbolo.png", @"14.png", @"amarelo.png"];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gerarPergunta:(id)sender {
    if([[pergunta text] isEqualToString:perguntas[0]]){
        [pergunta setText:perguntas[1]];
        [resposta setText:(NSString *)@"???"];
    }
    else if([[pergunta text] isEqualToString:perguntas[1]]){
        [pergunta setText:perguntas[2]];
        [resposta setText:(NSString *)@"???"];
    }
    else{
        [pergunta setText:perguntas[0]];
        [resposta setText:(NSString *)@"???"];
    }

}

- (IBAction)gerarResposta:(id)sender {
    if([[pergunta text] isEqualToString:perguntas[0]]){
        [resposta setText:respostas[0]];
        imagem.image = [UIImage imageNamed:imagens[0]];
    }
    else if([[pergunta text] isEqualToString:perguntas[1]]){
        [resposta setText:respostas[1]];
        imagem.image = [UIImage imageNamed:imagens[1]];
    }
    else if([[pergunta text] isEqualToString:perguntas[2]]){
        [resposta setText:respostas[2]];
        imagem.image = [UIImage imageNamed:imagens[2]];
    }
    else{
        [resposta setText:respostas[0]];
    }
    
}
@end
