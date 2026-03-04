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
	version "2.5.5"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.5/taskurai_2.5.5_osx-x64.zip"
		sha256 "eb6104e9a27ac1473f90dc09872ebaf8ee97f104e5500584f6c93779eeb10839"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.5/taskurai_2.5.5_osx-arm64.zip"
		sha256 "59095c870688c29141094fbd07691db45d37802ea7f523ca1b5cb2bc48d76b41"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.5/taskurai_2.5.5_linux-arm64.zip"
		sha256 "cea5fa917d9021823cda693d86391a92e23db1873899a7e245631ce3bfedd599"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.5/taskurai_2.5.5_linux-x64.zip"
		sha256 "d324f779926f83a9f4644bc1e8e13e0271a254091489e71f28f5fb49260b68c2"
  
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
  