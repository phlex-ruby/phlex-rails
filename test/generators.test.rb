# frozen_string_literal: true

require "rails/generators"
require "generators/phlex/view/view_generator"
require "generators/phlex/install/install_generator"
require "generators/phlex/component/component_generator"

test "install generator" do
	with_temp_dir do |path|
		generator = Phlex::Generators::InstallGenerator.new
		generator.destination_root = path
		stdout, stderr = capture_io { generator.invoke_all }

		assert File.exist?("#{path}/config/initializers/phlex.rb")
		assert File.exist?("#{path}/app/components/base.rb")
		assert File.exist?("#{path}/app/views/base.rb")
	end
end

test "view generator" do
	with_temp_dir do |path|
		generator = Phlex::Generators::ViewGenerator.new(["Articles::Index"])
		generator.destination_root = path
		capture_io { generator.invoke_all }

		assert File.exist?("#{path}/app/views/articles/index.rb")
	end
end

test "component generator" do
	with_temp_dir do |path|
		generator = Phlex::Generators::ComponentGenerator.new(["Card"])
		generator.destination_root = path
		capture_io { generator.invoke_all }

		assert File.exist?("#{path}/app/components/card.rb")
	end
end

def with_temp_dir
	path = Pathname("./tmp/generators/#{SecureRandom.uuid}")
	FileUtils.mkdir_p(path)
	yield path
ensure
	FileUtils.rm_rf(path)
end

def capture_io
	orig_stdout = $stdout
	orig_stderr = $stderr
	captured_stdout = StringIO.new
	captured_stderr = StringIO.new
	$stdout = captured_stdout
	$stderr = captured_stderr

	yield

	[captured_stdout.string, captured_stderr.string]
ensure
	$stdout = orig_stdout
	$stderr = orig_stderr
end
