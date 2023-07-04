# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.1.0"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.1.0/taskurai_1.1.0_osx-x64.zip"
		sha256 "8cdc4007c0fc5bbb5bb803eded5b3afc15161272774d6b635594e98272f99782"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.1.0/taskurai_1.1.0_osx-arm64.zip"
		sha256 "1076d61016218fd70f97a31649391e2ffacebbb37d8a97fd11c46281e37116bb"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.1.0/taskurai_1.1.0_linux-arm64.zip"
		sha256 "bea393694e9df1ccc9705088d8d5ecbbb65ae83170e0be868f9725a474f9f98a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.1.0/taskurai_1.1.0_linux-x64.zip"
		sha256 "d0a6d33b9deb35c7f9a8d4b3fc76a2828260c4486801c8c19f69559b773bbecc"
  
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
  