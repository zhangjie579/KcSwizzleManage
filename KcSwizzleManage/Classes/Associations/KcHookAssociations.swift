//
//  KcHookAssociations.swift
//  FBSnapshotTestCase
//
//  Created by 张杰 on 2021/12/12.
//  hook 关联对象

import UIKit

public func kc_objc_setAssociatedObject(_ object: Any, _ key: UnsafeRawPointer, _ value: Any?, _ policy: objc_AssociationPolicy) {
    objc_setAssociatedObject(object, key, value, policy)
}


public func kc_objc_removeAssociatedObjects(_ object: Any) {
    objc_removeAssociatedObjects(object)
}

public func kc_objc_getAssociatedObject(_ object: Any, _ key: UnsafeRawPointer) -> Any? {
    return objc_getAssociatedObject(object, key)
}
