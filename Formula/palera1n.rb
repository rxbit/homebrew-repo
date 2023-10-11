class BinaryCurlDownloadStrategy < CurlDownloadStrategy
  def stage
    UnpackStrategy::Uncompressed.new(cached_location)
                                .extract(basename: name,
                                         verbose:  verbose? && !quiet?)
    yield if block_given?
  end
end

class Palera1n < Formula
  desc "palera1n is a developer-oriented jailbreak for checkm8 devices (A8-A11) on iOS 15.0+"
  homepage "https://palera.in"
  version "2.0.0-beta.7"

  url "https://github.com/palera1n/palera1n/releases/download/v2.0.0-beta.7/palera1n-macos-x86_64", :using => BinaryCurlDownloadStrategy
  sha256 "0c658b2a026b2ffa15b73854a6a559b59d0d4fefbd9afb7178b756112fbd3422"

  on_arm do
    url "https://github.com/palera1n/palera1n/releases/download/v2.0.0-beta.7/palera1n-macos-arm64", :using => BinaryCurlDownloadStrategy
    sha256 "abb27e3764f3aee2b942097400fd1ef1a6821e8897ba9f52815c1cee6477e4d0"
  end

  def install
    bin.install "palera1n"

  end

  test do
    system "palera1n", "--version"
  end
end
