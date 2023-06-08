# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.21"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.21/taskurai_0.2.21_osx-x64.zip"
		sha256 "4792b3035d4567f96d773fae0f085567e96674c264515b04e1858a9343073b59"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.21/taskurai_0.2.21_osx-arm64.zip"
		sha256 "3f0697e9b37b7122cad630ddf37ef1cccd73158a887514178e6360267c6b8da9"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.21/taskurai_0.2.21_linux-arm64.zip"
		sha256 "0189d872778a276ef5ba584840e97a7d74afc9b83e70a9bbe398508e1dda4284"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.21/taskurai_0.2.21_linux-x64.zip"
		sha256 "c37e252c2b18810a9e54b1f8408779ae7a3a932b9f5e151f0c25d19b7f3069b8"
  
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
  