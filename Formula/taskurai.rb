# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.4"
	license: "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.4/taskurai_0.2.4_osx-x64.zip"
		sha256 "60363c3ade9d264cff826987c6d095f9ee1b962332373626d0187923384d0e69"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.4/taskurai_0.2.4_osx-arm64.zip"
		sha256 "804c939f1b6bba738f636abff3b743afac1137e5c29735f699bc474ed20ef0e6"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.4/taskurai_0.2.4_linux-arm64.zip"
		sha256 "845721224921c2633796ec0cb98480ea77424c2b802fb97acb7f57df72c7f094"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.4/taskurai_0.2.4_linux-x64.zip"
		sha256 "0ceb9f060977058a096678c15f51bf7a659674f82c8a11e3915fff44a627a561"
  
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
  