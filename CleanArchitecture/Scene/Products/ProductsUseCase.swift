//
//  ProductsUseCase.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 7/14/20.
//  Copyright © 2020 Tuan Truong. All rights reserved.
//

import Combine

protocol ProductsUseCaseType {
    func getProducts(page: Int) -> AnyPublisher<PagingInfo<Product>, Error>
}

struct ProductsUseCase: ProductsUseCaseType, GettingProducts {
    let productGateway: ProductGatewayType
    
}
