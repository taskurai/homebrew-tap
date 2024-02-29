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
	version "1.5.0"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.5.0/taskurai_1.5.0_osx-x64.zip"
		sha256 "12787197d50fea8c783923a86cab26f3ce3cda7caad39cf8004a18c56a583914"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.5.0/taskurai_1.5.0_osx-arm64.zip"
		sha256 "f3d9d6ca6a96ce31c3d05cbc21e957acb8714a47326d18be660b1ed852634222"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.5.0/taskurai_1.5.0_linux-arm64.zip"
		sha256 "e4a1e15c9fffaedf0c9ff69ef2b21216d9b9b1e35a0a59369fcec7f0d7b84ebe"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.5.0/taskurai_1.5.0_linux-x64.zip"
		sha256 "e0bdc43362485c026088a8e804d5fadae13fcabaed7c27755ce1c4c5b7f109d1"
  
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
  