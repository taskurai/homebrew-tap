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
	version "2.5.16"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.16/taskurai_2.5.16_osx-x64.zip"
		sha256 "c9d68bf753eee4da6fd2302dc30bc6d8c72bf896606f08b5ab8ce99e539c2ce4"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.16/taskurai_2.5.16_osx-arm64.zip"
		sha256 "d9f4f6cbfaaaa4dfe4b2dc3a4aa04847589b23007d1796bd332610b8f6478288"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.16/taskurai_2.5.16_linux-arm64.zip"
		sha256 "3061c42bc154779c3960e70fa7a99c2e6f59de94305f0299ba194723410b44fb"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.16/taskurai_2.5.16_linux-x64.zip"
		sha256 "8d5913bb58aa588f6b5259946f25ba12a8218e083fb79a99ce8093a53bd79eaa"
  
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
  