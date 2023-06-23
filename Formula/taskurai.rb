# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.0.3"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.0.3/taskurai_1.0.3_osx-x64.zip"
		sha256 "2b67e54584b55273b755734ffd18f6f3490859f56c4b15b05c0336e02e693e4a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.0.3/taskurai_1.0.3_osx-arm64.zip"
		sha256 "91fc4cc0ff383126697e3a079cc13ab1bd93680dddef1a98ba77488cbaafb0b7"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.0.3/taskurai_1.0.3_linux-arm64.zip"
		sha256 "0c264a089e86f99b730ff49e1718e7315de15c79113be4d8b76aff0ba19b0ef1"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.0.3/taskurai_1.0.3_linux-x64.zip"
		sha256 "3488418a127e00224f9eee674f975bac9c7e555a544858e95917d35a6dc936f6"
  
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
  