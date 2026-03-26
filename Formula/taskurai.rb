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
	version "2.5.15"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.15/taskurai_2.5.15_osx-x64.zip"
		sha256 "c0fafdc1c461c32f9add392b3c3cacea11366271406c7f327627c508bc8b323a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.15/taskurai_2.5.15_osx-arm64.zip"
		sha256 "98e1e1cc1f476d477f82c37e6d7db5e99e231982cfa98fd2762f156f8d81e344"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.15/taskurai_2.5.15_linux-arm64.zip"
		sha256 "d526e230d80d9b98ff7ae6a78c8fd26408e7f1d353d843302587692d344930d3"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.15/taskurai_2.5.15_linux-x64.zip"
		sha256 "52b7cdb9667403ba3a79587524fe8183221217c90e0834a03e871c2536ad9dda"
  
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
  