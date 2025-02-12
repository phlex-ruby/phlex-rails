# frozen_string_literal: true

require "rails/generators"
require "generators/phlex/install/install_generator"

test "install generator" do
	with_temp_dir do |path|
		generator = Phlex::Generators::InstallGenerator.new
		generator.destination_root = path
		stdout, stderr = capture_io { generator.invoke_all }

		assert File.exist?("#{path}/config/initializers/phlex.rb")
		assert File.exist?("#{path}/app/components/base.rb")
		assert File.exist?("#{path}/app/views/base.rb")

		assert_includes stdout, "create  config/initializers/phlex.rb"
		assert_includes stdout, "create  app/components/base.rb"
		assert_includes stdout, "create  app/views/base.rb"
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
