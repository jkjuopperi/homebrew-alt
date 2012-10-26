require 'formula'

class OwlLisp < Formula
  homepage 'http://owl-lisp.googlecode.com/'
  url 'http://owl-lisp.googlecode.com/files/owl-lisp-0.1.6.tar.gz'
  sha1 '902289d771050ed776b88b2450d7944525b7fa2d'

  def install
    inreplace 'Makefile' do |s|
      s.remove_make_var! %w[CFLAGS]
      s.change_make_var! "PREFIX", prefix
    end
    system "make install"
  end
end
