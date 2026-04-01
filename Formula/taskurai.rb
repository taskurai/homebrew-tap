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
	version "2.5.20"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.20/taskurai_2.5.20_osx-x64.zip"
		sha256 "b1c78e7670c5a621c86b8d7f9d60764d6570156889eb42624477ca6b6c1d9281"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.20/taskurai_2.5.20_osx-arm64.zip"
		sha256 "4c8bbcf2f0c13fa258fd82a3c759f15ba4e3e81c8026634059610d5b8066c96e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.20/taskurai_2.5.20_linux-arm64.zip"
		sha256 "d4b9d1131818407b892c79ef9e65f5f583ea0895fcac4b8a3b75a46356199544"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.20/taskurai_2.5.20_linux-x64.zip"
		sha256 "6a9a252901f1210a7978d6750bc5c5e010112054f45f238a50036ca25024e7f2"
  
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
  