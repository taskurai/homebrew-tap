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
	version "2.5.24"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.24/taskurai_2.5.24_osx-x64.zip"
		sha256 "66a49d306ddf8aea774d75528aa298577838890ec7e56d5ba15b8de0760e7467"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.24/taskurai_2.5.24_osx-arm64.zip"
		sha256 "5497c8bb8f24693095f5958992acb52cee25eda95791a5219e0aef4b5eb8f7c5"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.24/taskurai_2.5.24_linux-arm64.zip"
		sha256 "f64ca61d8eea3d30924dbcaf2954c14ff6010319e12f0351eaa28b3814ea5bfd"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.24/taskurai_2.5.24_linux-x64.zip"
		sha256 "3833c4bb766ea7b0304fa8ecfd7cf03e2e1dabae9c51765a890f69870f4164da"
  
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
  