# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.4.0"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.4.0/taskurai_0.4.0_osx-x64.zip"
		sha256 "e402381bdd1baabd1247469208f620452e071a05c1328e4a2b28ffafe17a05aa"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.4.0/taskurai_0.4.0_osx-arm64.zip"
		sha256 "da76a45338d4d8b19ac4323b0f4bad571e3df5491e504a1aeb3d7c70ed8757b5"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.4.0/taskurai_0.4.0_linux-arm64.zip"
		sha256 "6076a88e1c663d3749e904c0923c71b1b19fe06db438b3c378e02dc2fb7865c8"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.4.0/taskurai_0.4.0_linux-x64.zip"
		sha256 "0c306ff0f6e3ea2189f3098aab6dd061f9fcfcaaa8ec189ae0118f72b5b350d9"
  
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
  