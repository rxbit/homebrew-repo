class LibimobiledeviceGlue < Formula
  desc ""
  homepage "https://github.com/libimobiledevice"
  url "https://github.com/libimobiledevice/libimobiledevice-glue/releases/download/1.0.0/libimobiledevice-glue-1.0.0.tar.bz2"
  version ""
  sha256 ""
  license ""

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libplist"

  head do
    url "https://github.com/libimobiledevice/libimobiledevice-glue.git"
  end

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "install"
  end

end
