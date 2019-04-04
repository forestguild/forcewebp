Gem::Specification.new do |s|
    s.name        = 'jekyll-forcewebp'
    s.version     = '1.0.0'
    s.date        = '2019-04-04'
    s.summary     = "Very simple gem that will add `<picture/>` with your image and webp image url"
    s.description = "Very simple gem that will add `<picture/>` with your image and webp image url. Check READMEfor example"
    s.authors     = ["Nikita Chernyi"]
    s.email       = 'github@rakshazi.me'
    s.files       = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(%r!^lib/!)
    s.require_paths = %w(lib)
    s.homepage    = 'https://github.com/forestguild/forcewebp'
    s.license     = 'MIT'
    s.metadata = {
        "bug_tracker_uri"   => "https://github.com/forestguild/forcewebp",
        "changelog_uri"     => "https://github.com/forestguild/forcewebp/releases",
        "documentation_uri" => "https://github.com/forestguild/forcewebp/blob/master/README.md",
        "homepage_uri"      => "https://github.com/forestguild/forcewebp",
        "source_code_uri"   => "https://github.com/forestguild/forcewebp",
    }
    s.required_ruby_version = '>=2.0.0'
    s.add_runtime_dependency 'jekyll', '~> 3.8.5', '>=3.0.0'
    s.add_runtime_dependency 'nokogiri', '~> 1.10.1', '>=1.0.0'
    s.add_runtime_dependency 'mime-types', '~> 3.2.2', '>=3.0.0'
end
