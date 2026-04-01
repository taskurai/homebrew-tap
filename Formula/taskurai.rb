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
	version "2.5.19"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.19/taskurai_2.5.19_osx-x64.zip"
		sha256 "99598365935a3764162aeeca4d4d958ac3bcb169d1c99ad4a286ba87488431b2"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.19/taskurai_2.5.19_osx-arm64.zip"
		sha256 "f5f50caab2e18a95c55d75017928949f493ae0387fcaabca09d3b342fb313811"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.19/taskurai_2.5.19_linux-arm64.zip"
		sha256 "0ef5714eb084afd7a20c579582e5d87a1a342acc474b8e9b7e899e809ceda55b"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.19/taskurai_2.5.19_linux-x64.zip"
		sha256 "db2b5da7239bd9db1a47f152ac7ccf193378227ca5ac3c2a93f681e46c64914d"
  
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
  