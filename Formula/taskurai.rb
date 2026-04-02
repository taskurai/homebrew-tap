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
	version "2.5.21"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.21/taskurai_2.5.21_osx-x64.zip"
		sha256 "b163c847d20bb407c78069bab53433ddef3491eddd91b674146e4b31475ec74e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.21/taskurai_2.5.21_osx-arm64.zip"
		sha256 "46f5d203f0b6d65650660af1c63f867eccf293c85405bd3265fff6c293cc735e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.21/taskurai_2.5.21_linux-arm64.zip"
		sha256 "75ceec18a30786c0e38ef8534256c7acde61a6354fcbf961f6f5e4893b6a4b0a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.21/taskurai_2.5.21_linux-x64.zip"
		sha256 "ee430149b8b8ebe95af9ad06463179a42722f40fa1ef84c43d299fa29c7a5b34"
  
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
  