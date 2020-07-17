Pod::Spec.new do |s|
    s.name         = 'ZBarSDK'
    s.version      = '1.3.1'
    s.summary      = 'ZBarSDK'
    s.homepage     = 'https://github.com/MxABC/ZBarSDK'
    s.license      = 'MIT'
    s.authors      = {'MxABC' => 'lbxia20091227@foxmail.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/MxABC/ZBarSDK.git', :tag => s.version}
    s.ios.deployment_target = "7.0"

    s.requires_arc = false
    s.prefix_header_contents = '#import <Foundation/Foundation.h>','#import <UIKit/UIKit.h>'
    s.source_files =  "include/zbar.h",
       "zbar/**/*.h",
       "iphone/*.h",
       "iphone/include/**/*.h",
       "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c",
       "zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c",
       "zbar/qrcode/*.c",
       "iphone/*.m"
    s.ios.frameworks = 'Foundation','AVFoundation','CoreGraphics','CoreMedia','CoreVideo','QuartzCore'
    s.library   = "iconv"
    s.public_header_files = "iphone/**/**/*.h","include/*.h"
    s.prefix_header_file = 'iphone/include/prefix.pch'
    s.compiler_flags = '-w'

end
