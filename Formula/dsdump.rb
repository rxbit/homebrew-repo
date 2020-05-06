class Dsdump < Formula
  desc "An improved nm + Objective-C & Swift class-dump"
  homepage "https://github.com/DerekSelander/dsdump"
  version "0.0.9"
  sha256 "94c1125a991bb4a27702f9a96c0bceec130c6d1f63961cfe7e8267775c846245"


  url "https://github.com/DerekSelander/dsdump/raw/master/compiled/dsdump_#{version}.zip", :using => :curl


  def install
    bin.install "dsdump"
  end
end
