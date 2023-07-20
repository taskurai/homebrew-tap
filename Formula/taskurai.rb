# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.3.5"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.3.5/taskurai_1.3.5_osx-x64.zip"
		sha256 "7d89844913836ddc4114ad5ac6ee38a4b5a07746e9bcbeecd333b32b52b45792"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.3.5/taskurai_1.3.5_osx-arm64.zip"
		sha256 "4e159e4651d7a411f71fa2fd70bd20c89b1e342bf8fac48b868775787b699137"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.3.5/taskurai_1.3.5_linux-arm64.zip"
		sha256 "c1c3abe333e9a2af705c47b400a734e6d13254d3fbc31e910bc11f56bfb49440"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.3.5/taskurai_1.3.5_linux-x64.zip"
		sha256 "a108ee8498fbe61f6d620a5e39e4c1b0cefe83d75794d0b382d0830d0ba3eecb"
  
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
  