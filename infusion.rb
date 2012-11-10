
#
#  This file is part of the "Teapot" project, and is released under the MIT license.
#

required_version "0.1"

define_package "opengl3-headers-1.0" do |package|
	package.build(:all) do |platform, environment|
		include_path = File.expand_path("../include", __FILE__)
		
		$stderr.puts "Copying #{include_path} to #{platform.prefix}"
		FileUtils.cp_r include_path, platform.prefix.to_s
	end
end

