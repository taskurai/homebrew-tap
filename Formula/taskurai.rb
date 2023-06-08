# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.19"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.19/taskurai_0.2.19_osx-x64.zip"
		sha256 "824df40af44346440b7ae6d821a0a84b51990f5ff9a1b2d9c89dc18b8541f9cf"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.19/taskurai_0.2.19_osx-arm64.zip"
		sha256 "77b497410af6c83797245ee62f33ae7e86300ce4cbabdc6a4e69fc8e2eb3f097"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.19/taskurai_0.2.19_linux-arm64.zip"
		sha256 "0b2be207df58f1e70cd77fb1655a1daba5c145b7c9cfd5272c492327ea5d0c51"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.19/taskurai_0.2.19_linux-x64.zip"
		sha256 "35a8590115de78b004e3847b1e2633b005c831f7481342580ea2c14833e5ac91"
  
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
  