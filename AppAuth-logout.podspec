# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name         = 'AppAuth-logout'
  s.version      = '1.0.3'
  s.summary      = 'AppAuth for iOS with logout support.'
  s.homepage     = 'https://github.com/yurikoles/AppAuth-logout'
  s.license      = 'Apache License, Version 2.0'
  s.authors      = { 'Yurii Kolesnykov' => 'root@yurikoles.com',
                     'William Denniss' => 'wdenniss@google.com',
                     'Steven E Wright' => 'stevewright@google.com' }
  s.platform = :ios, '7.0'

  s.source       = { git: 'https://github.com/yurikoles/AppAuth-logout.git',
                     tag: s.version }
  s.requires_arc = true

  s.subspec 'Core' do |core|
    core.source_files = 'Source/*.{h,m}'
    core.exclude_files = 'Source/AppAuth.h'
  end

  s.subspec 'external_user_agent' do |external_user_agent|
    external_user_agent.source_files = 'Source/*.{h,m}'
    external_user_agent.ios.source_files      = 'Source/iOS/**/*.{h,m}'
    external_user_agent.ios.deployment_target = '7.0'
    external_user_agent.ios.frameworks        = 'SafariServices'
    external_user_agent.ios.weak_frameworks   = 'AuthenticationServices'
  end
end
