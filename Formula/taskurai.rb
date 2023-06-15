# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.3.3"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.3/taskurai_0.3.3_osx-x64.zip"
		sha256 "20902d0dafd6d9f8e23f80f3954c4c75a603d0eb824873ad720821bfc7617d20"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.3.3/taskurai_0.3.3_osx-arm64.zip"
		sha256 "1d796c2eb06307303abf3713ccd8a198dfc3e4460ee17a98b5d054b557dceafa"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.3.3/taskurai_0.3.3_linux-arm64.zip"
		sha256 "03dcf1592352d8b4e5d11ebfe4e85148df346920d96ba98b2622a2ae8d5d600c"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.3/taskurai_0.3.3_linux-x64.zip"
		sha256 "c61ac20a33e80c4a2b70506d84caea52a6567d55aea9195a716801505209373d"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	conflicts_with "taskurai"
  
	test do
	  system "#{bin}/taskurai",  "--version"
	end
  end
  