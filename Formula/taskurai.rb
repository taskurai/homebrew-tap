# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.12"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.12/taskurai_0.2.12_osx-x64.zip"
		sha256 "5d39d19c176f90e69588ed7625719b16cfea48f0a055ca7b672dcc069dbd7765"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.12/taskurai_0.2.12_osx-arm64.zip"
		sha256 "e5acdc189a6d169a17f8813c85e162c24c77eb26e4609b8d71a2148a6c0445f9"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.12/taskurai_0.2.12_linux-arm64.zip"
		sha256 "1c90a71e889699f9d834d2fb01bd764607c3e3a5184691d5dcffc97e0f70c9f2"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.12/taskurai_0.2.12_linux-x64.zip"
		sha256 "d36aba4ca01f0a142f3b55b6addf8de62555ce9fc1614791e3010c2596cea45a"
  
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
  