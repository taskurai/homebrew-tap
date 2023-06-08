# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.18"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.18/taskurai_0.2.18_osx-x64.zip"
		sha256 "5722a360f194049ddb3518f7379b58a0c145a23d32dcf6cb0085553bb070c740"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.18/taskurai_0.2.18_osx-arm64.zip"
		sha256 "6e9c2c69f571feeb840cdcc450beaad2a55441dc5bef122dfe76e5d7d4238d63"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.18/taskurai_0.2.18_linux-arm64.zip"
		sha256 "a3bf6ffa4d5e9c3ee9e42556574356e4f90958324d2e4ef046ed8a1deecda446"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.18/taskurai_0.2.18_linux-x64.zip"
		sha256 "543cbd582e22108583c0175868b60cfffe235b175abea4ab3876ef787b2ef308"
  
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
  