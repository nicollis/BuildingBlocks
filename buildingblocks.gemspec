# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name = "Building Blocks"
    spec.version = '1.0'
    spec.authors = ["Nic Ollis"]
    spec.email = ["nic@ollis.me"]
    spec.summary = %q{A collection of small odin projects}
    spec.description = %q{A collection of the 3 projects from the Building Blocks exersize from The Odin Project}
    spec.homepage = "http://ollis.me/"
    spec.license = "MIT"
    
    spec.files = ['lib/buildingblocks.rb']
    spec.executables = ['bin/buildingblocks']
    spec.test_files = ['tests/test_blocks.rb']
    spec.require_paths = ["lib"]
end