//
//  KcHookRx.swift
//  KcSwizzleManage
//
//  Created by 张杰 on 2021/12/17.
//

import UIKit
import RxSwift


extension ObservableType {
    /**
     Subscribes an element handler, an error handler, a completion handler and disposed handler to an observable sequence.
     
     - parameter onNext: Action to invoke for each element in the observable sequence.
     - parameter onError: Action to invoke upon errored termination of the observable sequence.
     - parameter onCompleted: Action to invoke upon graceful termination of the observable sequence.
     - parameter onDisposed: Action to invoke upon any type of termination of sequence (if the sequence has
     gracefully completed, errored, or if the generation is canceled by disposing subscription).
     - returns: Subscription object used to unsubscribe from the observable sequence.
     */
    public func kc_subscribe(onNext: ((Element) -> Void)? = nil,
                             onError: ((Error) -> Void)? = nil,
                             onCompleted: (() -> Void)? = nil,
                             onDisposed: (() -> Void)? = nil) -> RxSwift.Disposable {
        return subscribe(onNext: onNext, onError: onError, onCompleted: onCompleted, onDisposed: onDisposed)
    }
}
