platform :ios, '9.0'
use_frameworks!
target 'socketio-sdk' do
  pod 'Socket.IO-Client-Swift', '8.3.3'
  pod 'SnapKit', '3.0.2'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.1'
        end
    end
end
