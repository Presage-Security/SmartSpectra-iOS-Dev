Pod::Spec.new do |s|
  s.name         = "Smart_Spectra_SDK"
  s.version      = "0.0.6"
  s.summary      = "Smart Spectra SDK"
  s.description  = "Smart Spectra SDK is the SDK that help you to check HH and RR"
  s.homepage     = "https://presagetechnologies.com/"
  s.ios.deployment_target = '13.0'
  
  s.license = { :type => "LGPL 3.0", :file => "LICENSE.md" }
  s.author       = { "Presage Technologies" => "support@presagetech.com" }
  s.platform     = :ios, "13.0"
  s.source       = { 
    :git => "https://github.com/Presage-Security/SmartSpectra-iOS-Dev.git", 
    :tag => "#{s.name}-#{s.version.to_s}" 
  }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.source_files = "Smart_Spectra_SDK/**/*.swift"
 
  s.module_name  = "Smart_Spectra_SDK"
 
  s.vendored_frameworks = 'ExternalFrameworks/PresagePreprocessing.framework'
  s.swift_version = '5.0'
end