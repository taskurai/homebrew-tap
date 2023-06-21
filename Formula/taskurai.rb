# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.4.1"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.4.1/taskurai_0.4.1_osx-x64.zip"
		sha256 "895be898214a64abde8a7b2a6fda77d0f473adc88b1111119548eaf5d4f64b73"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.4.1/taskurai_0.4.1_osx-arm64.zip"
		sha256 "377496425ce0317c8a16f3f59a3c9a2730d91a82b017e496c384f73cd7745367"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.4.1/taskurai_0.4.1_linux-arm64.zip"
		sha256 "be06c814ae8bad8b147bda5affa2aae6c8427b85f758e56816b52342cfb45871"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.4.1/taskurai_0.4.1_linux-x64.zip"
		sha256 "322c59093f6eac3eab261f8353adb254b2d078a85d01b04025aa11c489b3851d"
  
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
  