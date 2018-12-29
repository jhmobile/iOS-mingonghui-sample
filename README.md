# iOS-mingonghui-sample
智慧劳务项目集成示例

### 1. 按示例修改Podfile.
<pre><p>
// Podfile

source 'https://github.com/CocoaPods/Specs.git'
source 'git@gitlab.jinhui365.cn:iOS/JHJRSpecs.git'

# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'iOS-mingonghui-sample' do
  pod 'MingonghuiSDK', '0.1.2'

end
</p></pre>

### 2. 执行`pod repo add JHJRSpecs git@gitlab.jinhui365.cn:iOS/JHJRSpecs.git`添加私有pod源，再执行`pod install`安装依赖.
### 3. 使用以下代码调起智慧劳务模块
<pre><p>
//  ViewController.m

#import "ViewController.h"
#import "MGHModuleManager.h"

- (void)onButtonClick {
  // 参数NO表示使用测试环境，YES表示使用生产环境；uid:基座uid；channelId：云码通在统一账户的渠道id；参数self表示当前viewController。
  [MGHModuleManager startModuleWithServiceProduction:NO uid:@"61" channelId:@"0" fromViewController:self];
}
</p></pre>

### 测试账号
11112018111 123456
11112018112 123456
