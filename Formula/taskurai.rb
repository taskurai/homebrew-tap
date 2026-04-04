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
	version "2.5.22"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.22/taskurai_2.5.22_osx-x64.zip"
		sha256 "55f218fd812d70bb68731a7eafd559780715dde9fa84b6de9d8dfa1f13852bf3"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.22/taskurai_2.5.22_osx-arm64.zip"
		sha256 "5c20755336199f50b3f14b9daff382fcee541ebdef63088c65172f7a4870722a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.22/taskurai_2.5.22_linux-arm64.zip"
		sha256 "3afbc3aba689659f5249a8f2d59a05791fcab999575511e141f0c67593ae45bc"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.22/taskurai_2.5.22_linux-x64.zip"
		sha256 "571413caada7c4d0add2d6fb9b21408ed774c24d6f0d473c2882c70c35187bf3"
  
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
  