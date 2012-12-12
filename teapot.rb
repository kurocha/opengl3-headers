
#
#  This file is part of the "Teapot" project, and is released under the MIT license.
#

required_version "0.5"

define_target "opengl3-headers" do |target|
	target.install do |environment|
		config = environment.flatten
		
		include_path = File.expand_path("../include", __FILE__)
		
		$stderr.puts "Copying #{include_path} to #{config[:install_prefix]}"
		FileUtils.cp_r include_path, config[:install_prefix]
	end

	target.depends :platform
		
	target.provides "Aggregate/OpenGL/Headers"
end

