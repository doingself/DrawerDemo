# DrawerDemo

+ 抽屉, 类似 QQ 左边侧滑
+ 弹出菜单 `popoverPresentationController`

<figure class="half">
    <img src="https://github.com/doingself/DrawerDemo/blob/master/images/image1.jpg">
    <img src="https://github.com/doingself/DrawerDemo/blob/master/images/image2.jpg">
</figure>

## 抽屉思路

### 将2个 UIViewController 放入 同一个 UIViewController中

```
// 注意顺序
self.view.addSubview(self.leftViewController.view)
self.view.addSubview(self.mainViewController.view)

self.addChildViewController(self.leftViewController)
self.addChildViewController(self.mainViewController)
```

### 添加事件改变 `view.transform`

#### 打开左侧抽屉
```
self.leftViewController.view.transform = CGAffineTransform.identity
self.mainViewController.view.transform = CGAffineTransform(translationX: 300, y: 0)
```

#### 关闭左侧抽屉
```
self.leftViewController.view.transform = CGAffineTransform(translationX: -300, y: 0)
self.mainViewController.view.transform = CGAffineTransform.identity
```

## popoverPresentationController

1. 定义普通的 `UIViewController`
2. 弹出
```
let pop = PopViewController()
pop.preferredContentSize = CGSize(width: 150, height: 300)
pop.modalPresentationStyle = .popover
pop.popoverPresentationController?.barButtonItem = sender as? UIBarButtonItem
pop.popoverPresentationController?.delegate = self
self.present(pop, animated: true, completion: nil)
```

# Requirements
+ Swift 4
+ iOS 10+
+ Xcode 9+

---

鸣谢

+ https://www.jianshu.com/p/679b94639765
