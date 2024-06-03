=begin
 This is the default license template.
 
 File: taskurai-template.rb
 Author: bartpappyn
 Copyright (c) 2024 bartpappyn
 
 To edit this license information: Press Ctrl+Shift+P and press 'Create new License Template...'.
=end

# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.12.0"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.12.0/taskurai_1.12.0_osx-x64.zip"
		sha256 "6de402aa88a909f26df1e6a143b901e3d11c3c8f53617568da2cade5ebb5f886"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.12.0/taskurai_1.12.0_osx-arm64.zip"
		sha256 "a1f576255cc3df5cf0f718c3276446637c4b39fe748e53d44a96307e64cd32a5"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.12.0/taskurai_1.12.0_linux-arm64.zip"
		sha256 "ae45e3d3341221a6b21e7f6784bd4a6f7018215869cbebfc6c9ca3ff1e027b58"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.12.0/taskurai_1.12.0_linux-x64.zip"
		sha256 "3e8677d9ca7513523b593c7ef21e802448ef91f05e37232133b28d473bc6f94d"
  
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
  