
#
#  This file is part of the "Teapot" project, and is released under the MIT license.
#

teapot_version "1.0.0"

define_target "opengl3-headers" do |target|
	target.build do
		source_root = target.package.path + 'source'
		
		copy headers: Files::Glob.new(source_root, 'include/**/*.{h,hpp}'), prefix: environment[:install_prefix]
	end
	
	target.depends "Build/Files"
	target.depends :platform
	
	target.provides "Aggregate/OpenGL/Headers"
end

