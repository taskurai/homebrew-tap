# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.23"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.23/taskurai_0.2.23_osx-x64.zip"
		sha256 "33181f68485d066b5df40832a75fd1f2473c5c4281cf0ee13893c7a15f828187"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.23/taskurai_0.2.23_osx-arm64.zip"
		sha256 "09a9d2546915a6d7dd4e8de804508c2b0bd8d712330176e036133dbded62687e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.23/taskurai_0.2.23_linux-arm64.zip"
		sha256 "3c2978eca69cc3dd0922a58990b312a47e5e1a1c5d40821e521326b332307816"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.23/taskurai_0.2.23_linux-x64.zip"
		sha256 "585dfa22540a3f7adba92c24ce970ec8005d79be2ee58dbe7ff2e14b0e312741"
  
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
  