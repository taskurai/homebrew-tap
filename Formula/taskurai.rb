# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.17"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.17/taskurai_0.2.17_osx-x64.zip"
		sha256 "5a656e9f4f2ce1e5ae2750b1bfe8d04763cb1befdaa22fc7fb487d4e987d5592"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.17/taskurai_0.2.17_osx-arm64.zip"
		sha256 "fb0f1581c52a8f1747491e694defddc1a7efc835d3e5ba543180b3a4ff29692b"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.17/taskurai_0.2.17_linux-arm64.zip"
		sha256 "cb4e9c241ccea3d12058a93763367820f10d290cc0e223d0a91fd7a2b0b32a83"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.17/taskurai_0.2.17_linux-x64.zip"
		sha256 "eeaf2a1558b138919ff691754f2a1f234ebb5327648b1a5e453c2e3a2d8ca417"
  
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
  