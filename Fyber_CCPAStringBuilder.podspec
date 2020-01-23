lib_version = '1.0.0'

Pod::Spec.new do |spec|
    spec.name ='Fyber_CCPAStringBuilder'
    spec.version = lib_version
    spec.author = { "Fyber" => "publisher.support@fyber.com" }
    spec.summary = 'Fyber CCPAStringBuilder'
    spec.description  = <<-DESC
The Open Source CCPA String Builder, which is compliant with IAB 1.0 final doc.
    DESC
    spec.homepage = 'https://github.com/inner-active/CCPAStringBuilder'
    spec.license = { :type => 'MIT', :file => 'LICENSE' }
    spec.social_media_url = 'https://www.facebook.com/fybernv/'
    spec.source = { :git => 'https://github.com/inner-active/CCPAStringBuilder.git', :branch => spec.version, :tag => spec.version }

    spec.platform = :ios
    spec.ios.deployment_target = '9.0'

    spec.swift_version = '5.0'

    spec.ios.source_files = 'Source/*.{h,m,swift}', 'CCPAStringBuilder/*.{h,m,swift}'
    spec.static_framework = true
end
