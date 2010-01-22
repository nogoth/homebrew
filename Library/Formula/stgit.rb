require 'formula'

class Stgit <Formula
  url 'http://download.gna.org/stgit/stgit-0.15.tar.gz'
  homepage 'http://www.procode.org/stgit'
  md5 'a4721b2a5f529cf5450109f9fcb4db19'

# depends_on 'cmake'

  def install
    system "make", "prefix=#{prefix}", "all"
#   system "cmake . #{std_cmake_parameters}"
    system "make", "prefix=#{prefix}", "install"
  end
end
