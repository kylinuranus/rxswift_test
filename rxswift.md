

Observable 一个类似管道的东西，sequence ,单项数据流

转换为observable的关键字 just(后面只带一个参数) ,of(最普通) , from(只接受集合类型)

```
 Observable.of([1,2,3],[1,3,4]).subscribe(onNext: { (ele) in
            print(ele)
        }, onError: { (error) in
            
        }, onCompleted: {
            
        }).disposed(by: dis)
        
 Observable.just([1,2,3]).subscribe(onNext: { (ele) in
            print(ele)
        }, onError: { (error) in
            
        }, onCompleted: {
            
        }).disposed(by: dis)

```


也可以通过creat创建

```

  let ob:Observable<Int> =  Observable.create { (observe) -> Disposable in
            observe.onNext(1)
            observe.onCompleted()
            return Disposables.create()
        }
        
   ob.subscribe(onNext:{ element in
            print(element)
        },onCompleted:{
            print("complete")
        }).disposed(by: dis)

```



-  AsyncSubject:只接受最后一次发送的订阅
-  PublishSubject:接受每一次订阅的消息
-  ReplaySubject 会接受到一些订阅之前发送的消息
-  BehaviorSubject 订阅的时候回默认发送一个序列中最后的元素
-  




mergae 合并两个信号，按时间发送

```
let disposeBag = DisposeBag()

let subject1 = PublishSubject<String>()
let subject2 = PublishSubject<String>()

Observable.of(subject1, subject2)
    .merge()
    .subscribe(onNext: { print($0) })
    .addDisposableTo(disposeBag)

subject1.onNext("?️")

subject1.onNext("?️")

subject2.onNext("①")

subject2.onNext("②")

subject1.onNext("?")

subject2.onNext("③")


```

zip 绑定两个信号在一起,1a,2b,3c
combineLatest 分别拿两个序列最新的绑定

```
  let nameSubject = PublishSubject<String>()
        let ageSubject = PublishSubject<Int>()
        
        Observable.zip(nameSubject,ageSubject).subscribe(onNext: { (name,age) in
            print("\(name)\(age)岁")
        }).disposed(by: dis)
        
        nameSubject.onNext("李四")
        nameSubject.onNext("张三")
        ageSubject.onNext(20)
        ageSubject.onNext(30)

```


- skip : 跳过操作
- take : 执行操作 
都可以加条件