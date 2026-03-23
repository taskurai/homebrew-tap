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
	version "2.5.14"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.14/taskurai_2.5.14_osx-x64.zip"
		sha256 "fd9c4593a87b7680ee6fe1b272460932673dd8f1b154d0dec1faad08d427bc5d"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.14/taskurai_2.5.14_osx-arm64.zip"
		sha256 "bbec5eb04192b399bbd0e4ee666930d717b19c48962a07411372669b1518efdd"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.14/taskurai_2.5.14_linux-arm64.zip"
		sha256 "b6372e835abaa3020178ad85faf3820c9205b6acbd601fffd5279fd395d04100"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.14/taskurai_2.5.14_linux-x64.zip"
		sha256 "93be04ddc2c167230a8388cfee0637501326044b061038086a6979acc09d73d1"
  
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
  