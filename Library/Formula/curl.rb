require 'formula'

class Curl <Formula
  url 'http://curl.haxx.se/download/curl-7.19.7.tar.gz'
  homepage ''
  md5 'ecb2e37e45c9933e2a963cabe03670ab'

# depends_on 'cmake'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
