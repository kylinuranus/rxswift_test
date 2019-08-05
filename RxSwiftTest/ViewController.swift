//
//  ViewController.swift
//  RxSwiftTest
//
//  Created by kylin on 2019/8/5.
//  Copyright © 2019 kylin. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class ViewController: UIViewController {
    
    let dis = DisposeBag()


    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Observable.of([1,2,3],[1,3,4]).subscribe(onNext: { (ele) in
//            print(ele)
//        }, onError: { (error) in
//
//        }, onCompleted: {
//
//        }).disposed(by: dis)
        
        
//        let ob:Observable<Int> =  Observable.create { (observe) -> Disposable in
//            observe.onNext(1)
//            observe.onCompleted()
//            return Disposables.create()
//        }
//
//        ob.subscribe(onNext:{ element in
//            print(element)
//        },onCompleted:{
//            print("complete")
//        }).disposed(by: dis)
        
        
        //repeatElement 重复输出元素， take 取前n次
//        Observable.repeatElement("1").take(3).subscribe(onNext:{ element in
//            print(element)
//
//        }).disposed(by: dis)
        
        
        // deffer 每次都是subscribe时就会去订阅一个新的序列。lazy load
//        var count = 1
//        let deferredSequence = Observable<String>.deferred {
//            print("Creating \(count)")
//            count += 1
//
//            return Observable.create { observer in
//                print("Emitting...")
//                observer.onNext("?")
//                observer.onNext("?")
//                observer.onNext("?")
//                return Disposables.create()
//            }
//        }
//
//        deferredSequence
//            .subscribe(onNext: { print($0) })
//            .disposed(by: dis)
//
//        deferredSequence
//            .subscribe(onNext: { print($0) })
//            .disposed(by: dis)
      
        
//        let nameSubject = PublishSubject<String>()
//        let ageSubject = PublishSubject<Int>()
//        
//        Observable.zip(nameSubject,ageSubject).subscribe(onNext: { (name,age) in
//            print("\(name)\(age)岁")
//        }).disposed(by: dis)
//        
//        nameSubject.onNext("李四")
//        nameSubject.onNext("张三")
//        ageSubject.onNext(20)
//        ageSubject.onNext(30)
//        nameSubject.onNext("小明")
        
//        Observable.of(3,4,5).map {
//            $0 + 1
//        }.subscribe(onNext:{
//                print($0)
//        }).disposed(by: dis)
//
        
        
    }


}

