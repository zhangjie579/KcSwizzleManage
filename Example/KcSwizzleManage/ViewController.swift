//
//  ViewController.swift
//  KcSwizzleManage
//
//  Created by 张杰 on 12/12/2021.
//  Copyright (c) 2021 张杰. All rights reserved.
//

import UIKit
import RxSwift
import KcSwizzleManage

//#if DEBUG
#if KcSwizzleManage

import KcSwizzleManage

// 注意⚠️: 这里要 extension Observable, 而不能 extension ObservableType, 因为创建的信号都是返回Observable(基类), 找方法还是会找到RxSwift库的ObservableType去
extension Observable {
    /**
     Subscribes an element handler, an error handler, a completion handler and disposed handler to an observable sequence.

     - parameter onNext: Action to invoke for each element in the observable sequence.
     - parameter onError: Action to invoke upon errored termination of the observable sequence.
     - parameter onCompleted: Action to invoke upon graceful termination of the observable sequence.
     - parameter onDisposed: Action to invoke upon any type of termination of sequence (if the sequence has
     gracefully completed, errored, or if the generation is canceled by disposing subscription).
     - returns: Subscription object used to unsubscribe from the observable sequence.
     */
    public func subscribe(file: String = #file,
                          method: String = #function,
                          line: Int = #line,
                          onNext: ((Element) -> Void)? = nil,
                          onError: ((Error) -> Void)? = nil,
                          onCompleted: (() -> Void)? = nil,
                          onDisposed: (() -> Void)? = nil) -> Disposable {
        return kc_subscribe { element in
//            printLog("[onNext]", prefix: "kc --- ", file: file, method: method, line: line)
            onNext?(element)
        } onError: { error in
//            printLog("[onError]", prefix: "kc --- ", file: file, method: method, line: line)
            onError?(error)
        } onCompleted: {
            onCompleted?()
        } onDisposed: {
            onDisposed?()
        }
    }
}
#endif
//#endif

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let observable = Observable.just(1)
        
        observable
            .subscribe { i in
            print(i)
        } onError: { error in
            
        } onCompleted: {
            
        } onDisposed: {
            
        }

    }

}




