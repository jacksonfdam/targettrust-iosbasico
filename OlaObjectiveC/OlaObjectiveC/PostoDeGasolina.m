//
//  PostoDeGasolina.m
//  OlaObjectiveC
//
//  Created by Jackson F. de A. Mafra on 5/13/13.
//  Copyright (c) 2013 Targettrust Treinamentos e Tecnologia. All rights reserved.
//

#import "PostoDeGasolina.h"

@implementation PostoDeGasolina
+ (void)abastecerCarroComAlcool:(NSObject<CombustivelAlcool> *)tipoAlccol {
    // Apenas delega para o método do protocolo
    [tipoAlccol abastecerComAlcool];
}
+ (void)abastecerCarroComGasolina:(NSObject<CombustivelGasolina> *)tipoGasolina {
    // Apenas delega para o método do protocolo
    [tipoGasolina abastecerComGasolina];
}
@end
