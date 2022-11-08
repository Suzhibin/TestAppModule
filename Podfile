workspace 'TestAppModule.xcworkspace'
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Suzhibin/TestAppModule.git'
platform :ios, '9.0'
inhibit_all_warnings!

target 'TestBasis' do
  project 'TestBasis/TestBasis.xcodeproj'
pod "CTMediator"
end

target 'TestA' do
  project 'TestA/TestA.xcodeproj'
  #pod 'TestAppModule/TestBasis/Utility', :path => '../TestAppModule'
  #pod 'TestAppModule/TestBasis/RequestTool', :path => '../TestAppModule'
  #pod 'TestAppModule/TestBasis/BasisTool', :path => '../TestAppModule'
  pod 'TestAppModule/TestBasis', :path => '../TestAppModule' #注意 集成了 基础组件所有
  pod 'TestAppModule/WBRenZHeng', :path=> '../TestAppModule'
end

target 'TestB' do
  project 'TestB/TestB.xcodeproj'
  pod 'TestAppModule/TestBasis/Utility', :path => '../TestAppModule' #注意 集成了 基础组件一部分
  pod 'TestAppModule/TestBasis/BasisTool', :path => '../TestAppModule'#注意 集成了 基础组件一部分
end

target 'TestC' do
  project 'TestC/TestC.xcodeproj'
  pod 'TestAppModule/TestBasis/Utility', :path => '../TestAppModule'#注意 集成了 基础组件一部分
  pod 'TestAppModule/TestBasis/RequestTool', :path => '../TestAppModule'#注意 集成了 基础组件一部分
  
end

target 'WBRenZHeng' do
  project 'WBRenZHeng/WBRenZHeng.xcodeproj'

end
