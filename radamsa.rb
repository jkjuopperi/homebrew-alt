require 'formula'

class Radamsa < Formula
  homepage 'http://code.google.com/p/ouspg/wiki/Radamsa'
  url 'https://ouspg.googlecode.com/files/radamsa-0.3.tar.gz'
  sha1 '94664298b9c5c1563fe4aa7b8fc8530bb6628a51'

  depends_on 'jkjuopperi/alt/owl-lisp'

  def install
    inreplace 'Makefile' do |s|
      s.remove_make_var! %w[CFLAGS]
      s.change_make_var! "PREFIX", prefix
    end
    system "make install"
  end
end
