//
//  LoginViewModel.swift
//  XTstoreApp
//
//  Created by hoang linh on 10/23/20.
//

import Foundation
import RxSwift
import RxCocoa



class LoginViewModel {
    
    public enum HomeError {
        case internetError(String)
        case serverMessage(String)
    }
    
    public let albums : PublishSubject<[LoginModel]> = PublishSubject()
    public let loading: PublishSubject<Bool> = PublishSubject()
    public let error : PublishSubject<HomeError> = PublishSubject()
    
    private let disposable = DisposeBag()
    
    
    public func requestData(){
        
        self.loading.onNext(true)
        APIManager.requestData(url: baseURL.apiLogin, method: .get, parameters: nil, completion: { (result) in
            self.loading.onNext(false)
//            switch result {
////            case .success(let returnJson) :
////                let albums = returnJson["Albums"].arrayValue.compactMap {return Album(data: try! $0.rawData())}
////                let tracks = returnJson["Tracks"].arrayValue.compactMap {return Track(data: try! $0.rawData())}
////                self.albums.onNext(albums)
////                self.tracks.onNext(tracks)
//            case .failure(let failure) :
//                switch failure {
//                case .connectionError:
//                    self.error.onNext(.internetError("Check your Internet connection."))
//                case .authorizationError(let errorJson):
//                    self.error.onNext(.serverMessage(errorJson["message"].stringValue))
//                default:
//                    self.error.onNext(.serverMessage("Unknown Error"))
//                }
//            }
        })
        
    }
}
