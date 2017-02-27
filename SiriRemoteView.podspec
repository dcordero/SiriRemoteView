Pod::Spec.new do |s|
  s.name = 'SiriRemoteView'
  s.authors = { 'David Cordero' => 'dcorderoramirez@gmail.com'}
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'Simple view representing a Siri Remote device'
  s.homepage = 'https://github.com/dcordero/SiriRemoteView'
  s.source = { :git => 'https://github.com/dcordero/SiriRemoteView.git', :tag => s.version }
  s.tvos.deployment_target = '9.0'
  s.source_files = 'SiriRemoteView/Sources/*.swift'
end
