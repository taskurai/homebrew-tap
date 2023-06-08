# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.13"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.13/taskurai_0.2.13_osx-x64.zip"
		sha256 "0e61ac608a05ba8fc40b09ca1d7afc6665d0384722c9e4ff84ff22e08dfcc690"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.13/taskurai_0.2.13_osx-arm64.zip"
		sha256 "1e0b504c38cc260daa3fa3cdd19c91dbbda955fc2707a50bed43d2979c2bf849"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.13/taskurai_0.2.13_linux-arm64.zip"
		sha256 "8ad85b3b51562b64300208b5c6268e5ecb46f7bb7e79252f35dfa92baabd96dd"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.13/taskurai_0.2.13_linux-x64.zip"
		sha256 "3b79514cbf21026b102c099bc4c051c67838d28d650e8c11eea0af05f27b313a"
  
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
  