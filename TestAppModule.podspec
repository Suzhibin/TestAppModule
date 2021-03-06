Pod::Spec.new do |s|

s.name         = "TestAppModule"
s.version      = "1.0.0"
s.summary      = "A short description of TestAppModule"
s.description  = "Gray's TestAppModule demo"
s.homepage     = "https://github.com/Suzhibin/TestAppModule"
# s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { 'suzhibin' => 'szb2323@163.com' }
s.source       = { :git => 'https://github.com/Suzhibin/TestAppModule.git', :tag => s.version.to_s }
s.ios.deployment_target = '9.0'

#基础组件
s.subspec 'TestBasis' do |bm|
    
    # BasisTool
    bm.subspec 'BasisTool' do |ba|
    ba.source_files = 'TestBasis/TestBasis/Classes/BasisTool/**/*.{h,m}'
    ba.resource_bundles = {
        'BasisTool' => [
    'TestBasis/TestBasis/Classes/BasisTool/**/*.{storyboard,xcassets,xib,plist}'
        ]
    }
    ba.ios.framework  = 'UIKit'
    end
    
    # RequestTool
    bm.subspec 'RequestTool' do |rq|
    rq.source_files = 'TestBasis/TestBasis/Classes/RequestTool/**/*.{h,m}'
    rq.resource_bundles = {
        'RequestTool' => [
    'TestBasis/TestBasis/Classes/RequestTool/**/*.{storyboard,xcassets,xib,plist}'
        ]
    }
    rq.ios.framework  = 'UIKit'
    end
    
    # Utility
    bm.subspec 'Utility' do |ut|
    ut.source_files = 'TestBasis/TestBasis/Classes/Utility/**/*.{h,m}'
    ut.resource_bundles = {
        'Utility' => [
    'TestBasis/TestBasis/Classes/Utility/**/*.{storyboard,xcassets,xib,plist}'
        ]
    }
    ut.ios.framework  = 'UIKit'
    ut.dependency 'MGJRouter'
    ut.dependency 'CTMediator'
    end

bm.source_files = 'TestBasis/TestBasis/Classes/**/*.{h,m,swift}'
bm.resource_bundles = {
'TestBasis' => [
'TestBasis/TestBasis/Classes/**/*.{storyboard,xcassets,xib,json}'
]
}
#bm.dependency 'MGJRouter'
#bm.dependency 'CTMediator'
#
#bm.ios.framework  = 'UIKit'
end

#TestA组件
s.subspec 'TestA' do |a|
a.source_files = 'TestA/TestA/Classes/**/*.{h,m,swift}'
a.resource_bundles = {
'TestA' => [
'TestA/TestA/Classes/**/*.{storyboard,xcassets,xib,json}'
]
}
a.prefix_header_file = 'TestA/TestA/Classes/TestA.pch'
a.dependency 'TestAppModule/TestBasis'

a.ios.framework  = 'UIKit'
end


#TestB组件
s.subspec 'TestB' do |b|
b.source_files = 'TestB/TestB/Classes/**/*.{h,m}'
b.resource_bundles = {
'TestB' => [
'TestB/TestB/Classes/**/*.{storyboard,xcassets,xib,json}'
]
}
#b.prefix_header_file = 'TestB/TestB/Classes/TestB.pch'
b.dependency 'TestAppModule/TestBasis'
b.ios.framework  = 'UIKit'
end

#TestC组件
s.subspec 'TestC' do |c|
c.source_files = 'TestC/TestC/Classes/**/*.{h,m}'
c.resource_bundles = {
'TestC' => [
'TestC/TestC/Classes/**/*.{storyboard,xcassets,xib,json}'
]
}
#c.prefix_header_file = 'TestC/TestC/Classes/TestC.pch'
c.dependency 'TestAppModule/TestBasis'
c.ios.framework  = 'UIKit'
end

end
