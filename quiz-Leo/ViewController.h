//
//  ViewController.h
//  quiz-Leo
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 23/02/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSArray *perguntas;

@property NSArray *respostas;

@property NSArray *imagens;


@property (weak, nonatomic) IBOutlet UIImageView *imagem;

@property (weak, nonatomic) IBOutlet UILabel *pergunta;

@property (weak, nonatomic) IBOutlet UILabel *resposta;

- (IBAction)gerarPergunta:(id)sender;

- (IBAction)gerarResposta:(id)sender;


@end

