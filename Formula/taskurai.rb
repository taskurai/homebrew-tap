# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.3.0"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.0/taskurai_0.3.0_osx-x64.zip"
		sha256 "39a4c58df782b1c9573556ba4d5749bab57276ff0410048204129b3ddddb59b0"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.3.0/taskurai_0.3.0_osx-arm64.zip"
		sha256 "fae09e7d31a8462357ec34f4d69265f03d01c3db9fa0dd749f18e9a9759390a2"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.3.0/taskurai_0.3.0_linux-arm64.zip"
		sha256 "61c0517e556980902844df8ad58508c3a44f58af30275a74faab133015269e57"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.0/taskurai_0.3.0_linux-x64.zip"
		sha256 "df1d350f32e5abcb3e70e21395c1a842773fe3afbc05ed57e28d0277a1c8b100"
  
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
  