# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.14"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.14/taskurai_0.2.14_osx-x64.zip"
		sha256 "4353c59459b7bedd49f4ae17cf4ee450bd5a272bdbeb70677029c776500e6ced"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.14/taskurai_0.2.14_osx-arm64.zip"
		sha256 "aee729f70b5e2a8055eae55b1002d81ac3e4d97656d1c2edd7d5605c01895c50"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.14/taskurai_0.2.14_linux-arm64.zip"
		sha256 "732bda32a1af08389009fbad484b8f7ddc213d106d6113ff803e2345f2df06b3"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.14/taskurai_0.2.14_linux-x64.zip"
		sha256 "459f81499101de9d909674076f19d94c6efa7165d2524aadd28a0a485cb7e2f0"
  
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
  