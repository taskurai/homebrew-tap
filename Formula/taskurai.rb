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
	version "2.5.27"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.27/taskurai_2.5.27_osx-x64.zip"
		sha256 "424e66faf68eb072f236534b5ae7f30bb0991a8525ac33efbed8253a34063e9e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.27/taskurai_2.5.27_osx-arm64.zip"
		sha256 "814e290f1600734665042eeb0ee92d8f17eccafb1244e1535d95ab60fa1e4570"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.27/taskurai_2.5.27_linux-arm64.zip"
		sha256 "2e89a75a56256e3272a1b2e84de92d10016a09aa4ff784f6f4254f573596922e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.27/taskurai_2.5.27_linux-x64.zip"
		sha256 "c773bbed7a825bcc065d5cadb730038df5cc90822c61edb0bba130fd92ed4fb8"
  
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
  