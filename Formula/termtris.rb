class Termtris < Formula
    desc "A terminal Tetris game with persistent highscores (curses + SQLite)"
    homepage "https://github.com/shay-ff/termtris"
    url "https://github.com/shay-ff/termtris/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "a6aadcefe32cd354c33c2ef356de31906cadf668382a20b2a3ec1560c68a73e7"
    license "MIT"
  
    depends_on "python@3.13"
  
    def install
      system "pip3", "install", ".", "--prefix=#{prefix}"
    end
  
    test do
      system "#{bin}/termtris", "--help"
    end
  end
  