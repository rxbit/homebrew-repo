class Rogcat < Formula
  desc "adb logcat wrapper and log processor"
  homepage "https://github.com/flxo/rogcat"
  url "https://github.com/flxo/rogcat/releases/download/v0.4.3/rogcat-x86_64-apple-darwin"
  sha256 "9948f339791a54475727670860376a8347b6fe359e4e19f8a1fa250274ad4f03"
  bottle :unneeded

  def install
    bin.install "rogcat"
  end

  test do
    system "#{bin}/rogcat", "--version"
  end
end
