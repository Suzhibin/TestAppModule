workspace 'TestAppModule.xcworkspace'
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Suzhibin/TestAppModule.git'
platform :ios, '9.0'
inhibit_all_warnings!

target 'TestBasis' do
  project 'TestBasis/TestBasis.xcodeproj'
pod "MGJRouter"
pod "CTMediator"
end

target 'TestA' do
  project 'TestA/TestA.xcodeproj'
  #pod 'TestAppModule/TestBasis/Utility', :path => '../TestAppModule'
  #pod 'TestAppModule/TestBasis/RequestTool', :path => '../TestAppModule'
  #pod 'TestAppModule/TestBasis/BasisTool', :path => '../TestAppModule'
  pod 'TestAppModule/TestBasis', :path => '../TestAppModule'
end

target 'TestB' do
  project 'TestB/TestB.xcodeproj'
  pod 'TestAppModule/TestBasis/Utility', :path => '../TestAppModule'
  pod 'TestAppModule/TestBasis/BasisTool', :path => '../TestAppModule'
end

target 'TestC' do
  project 'TestC/TestC.xcodeproj'
  pod 'TestAppModule/TestBasis/Utility', :path => '../TestAppModule'
  pod 'TestAppModule/TestBasis/RequestTool', :path => '../TestAppModule'
end


