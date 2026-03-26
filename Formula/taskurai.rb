=begin
 File: taskurai-template.rb
 Author: Buildby BV
 Copyright (c) Buildby BV. All rights reserved.
=end

# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "2.5.17"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.17/taskurai_2.5.17_osx-x64.zip"
		sha256 "10cb78fbec150fc9b474202e7a3aa2e10340b60d53bed34d56513155d646934f"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.17/taskurai_2.5.17_osx-arm64.zip"
		sha256 "6ed05b32f2980ee07f29373c21d6000ad7e5f2078e3f4532dc5dcae214031527"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.17/taskurai_2.5.17_linux-arm64.zip"
		sha256 "79168959d709c76d2148fb5b4c9e8931fb49346cf947a99d839629cfda6afe92"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.17/taskurai_2.5.17_linux-x64.zip"
		sha256 "18d375fd9481767f4ed6d7a24f2585f337b139e9073a837f0224210fa7513965"
  
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
  