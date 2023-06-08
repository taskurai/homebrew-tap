# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.15"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.15/taskurai_0.2.15_osx-x64.zip"
		sha256 "25aa3193c06cc4f06d872c9ded9b32f899d0755081780d31a56aa1f120d72758"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.15/taskurai_0.2.15_osx-arm64.zip"
		sha256 "5bcf14a7e7d965211cca52deefc2a35cb113b3edd3a6dd0a5b5fff7699dc256d"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.15/taskurai_0.2.15_linux-arm64.zip"
		sha256 "fe0cd72ab4c70f18360f4fa60df5717c7a9b45f10c87594ef8c93ee1331ab37a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.15/taskurai_0.2.15_linux-x64.zip"
		sha256 "b284724012969f4facbd4d294e5bf90220dfa7259d7bce3f1536f8dd54fe35ab"
  
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
  