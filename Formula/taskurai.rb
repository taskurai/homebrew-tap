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
	version "2.5.26"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.26/taskurai_2.5.26_osx-x64.zip"
		sha256 "ebad45a8a6993037258b346c66e5d80a90f4361dfe9eef120d1dadcba9d9025e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.26/taskurai_2.5.26_osx-arm64.zip"
		sha256 "6479900717dc3416875ad650e4c39aed3dd84f031f944afefdbea4f776d3f053"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.26/taskurai_2.5.26_linux-arm64.zip"
		sha256 "6fd39003808361d500b7d7f3820ae6179300f44beb773d2b2a5d00f7538d5754"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.26/taskurai_2.5.26_linux-x64.zip"
		sha256 "fe7b5e0cfe4cd9ced7765dd1babb5b3d26db1fc77deb61ec0ff86da2b63bf986"
  
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
  