# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.3.2"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.2/taskurai_0.3.2_osx-x64.zip"
		sha256 "cd69360b20e04ba4b5c40e0da71efa308b408d7242f94017caee263b0b177001"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.3.2/taskurai_0.3.2_osx-arm64.zip"
		sha256 "14c2ad5dfc972a606831bf378b5d8cb439e0bc2d6d25bd668e051ae87bc2a6ae"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.3.2/taskurai_0.3.2_linux-arm64.zip"
		sha256 "1eba427a4f5808a5221b42748d513a7a871db8cf27eb867b92becf8d7e92f1fe"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.2/taskurai_0.3.2_linux-x64.zip"
		sha256 "00e4b21ce02df268a9beb5b1b6c18cd0faa35004d742c08393309ea3a438c78b"
  
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
  