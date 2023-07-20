# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.3.3"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.3.3/taskurai_1.3.3_osx-x64.zip"
		sha256 "d51af16f54174dea7b6f4eece73136b56b2849473f02833a73fa1e9536cf72ee"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.3.3/taskurai_1.3.3_osx-arm64.zip"
		sha256 "08f7514de479f1b1a79f849fc95752d00ec150dadabaf0a8138553b339e3121c"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.3.3/taskurai_1.3.3_linux-arm64.zip"
		sha256 "f755ddca1a3dfc4df211d60f9507eeecd9c01710b20409618623e8ef49abdf4b"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.3.3/taskurai_1.3.3_linux-x64.zip"
		sha256 "1deb4fa29dddb46d00f0372fef91cb99a2572a084ef234ad7e53e17da5e51d0f"
  
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
  