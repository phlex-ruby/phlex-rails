# Changelog

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [1.0.1] 2023-11-24

- Dropped dependency on `rails` and now only depends on `railties`
- Fix an out of order rendering issue when yielding from a partial rendered with a block delegated from a component’s content block
- Added `flash` helper adapter in `Phlex::Rails::Helpers::Flash`
- Removed experimental form component

## [1.0.0] 2023-04-19

### Added

- Added an adapter for the pluralize view helper.

## 0.10.0

### Added

- You can now render procs and lambdas and enumerables of renderables.
- Experimental streaming interface

### Fixed

- Escaped ERB captures
- Use buffered component unless renderin in a template

***

Before this changelog was introduced, changes were logged in the [release notes](https://github.com/phlex-ruby/phlex-rails/releases).
