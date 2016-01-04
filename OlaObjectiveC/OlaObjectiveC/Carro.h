//
//  Carro.h
//  OlaObjectC
//
//  Created by Jackson F. de A. Mafra on 5/7/13.
//  Copyright (c) 2013 Targettrust Treinamentos e Tecnologia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombustivelFlex.h"
@interface Carro : NSObject <CombustivelFlex>
{
    NSString *nome;
@public
    int ano;
}

- (void) acelerar:(int) velocidade eDistancia:(int) distancia;

- (Carro *) initWithNome:(NSString *)_nome andAno:(int)_ano;

- (void) setNome:(NSString*)_nome;
- (NSString *) getNome;

- (void) setAno:(int)_ano;
- (int) getAno;

@end
