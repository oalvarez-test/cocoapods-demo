# Uncomment the next line to define a global platform for your project
# platform :ios, '17.0'

use_frameworks! :linkage => :dynamic

def cocoa_lumberjack
  pod 'CocoaLumberjack', '3.8.5'
end

target 'Cocoapods-demo' do

  target 'Cocoapods-demoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'Cocoapods-demoUITests' do
    # Pods for testing
  end
end

target 'CoreFeatureFramework' do
end

target 'LoggerFramework' do
  cocoa_lumberjack
end
