# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ossutil < Formula
  desc "Aliyun ossutil"
  homepage "https://www.alibabacloud.com/help/en/object-storage-service/latest/download-and-installation"
  version "1.7.16"
  license ""

  on_macos do
    on_arm do
      url "https://gosspublic.alicdn.com/ossutil/1.7.16/ossutil-v1.7.16-mac-arm64.zip"
      sha256 "99ba15426b9ce43dea39de2860a9670bd0f780f95ebc0b965d071eb7461ad9ad"
    end
    on_intel do
      url "https://gosspublic.alicdn.com/ossutil/1.7.16/ossutil-v1.7.16-mac-amd64.zip"
      sha256 "5f67e9eb533d4985e8f5b19ff6a9970b1fc715ba19fe0841dfec152dc70866cc"
    end
  end

  # depends_on "cmake" => :build

  def install
    bin.install "ossutil"
  end

  test do
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "${bin}/ossutil", "help"
  end
end
