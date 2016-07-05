# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "capistrano-strategy-jenkins_artifact"
  spec.version       = "0.1.0"
  spec.authors       = ["aereal"]
  spec.email         = ["aereal@aereal.org"]

  spec.summary       = %q{Capistrano 2 strategy that uses Jenkins' artifact as a distribution provider.}
  spec.description   = %q{Capistrano 2 strategy that uses Jenkins' artifact as a distribution provider.}
  spec.homepage      = "https://github.com/aereal/capistrano-strategy-jenkins_artifact"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jenkins_api_client"
  spec.add_development_dependency "capistrano", "< 3.0.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
