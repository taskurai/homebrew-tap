# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.0.2"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.0.2/taskurai_1.0.2_osx-x64.zip"
		sha256 "6bc44d5985989575c587efd8dc2d115e497a58a52b0e66756f5ff4a7a4345718"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.0.2/taskurai_1.0.2_osx-arm64.zip"
		sha256 "f7f6f0ce0b5ec4a253f6c04a8e58c3e2a8e3db8ac2e3d7a376e800bb6fbf9d7c"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.0.2/taskurai_1.0.2_linux-arm64.zip"
		sha256 "ba1eeaca34e9667923710a144bc9276e4b811dcb251b61eaa950dc3da1dfa182"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.0.2/taskurai_1.0.2_linux-x64.zip"
		sha256 "67f807e17cf1f00883d21591f032c1dc481f1e5e104ea721b2716854835cceb0"
  
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
  