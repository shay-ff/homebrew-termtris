class Termtris < Formula
    desc "A terminal Tetris game with persistent highscores (curses + SQLite)"
    homepage "https://github.com/shay-ff/termtris"
    url "https://github.com/shay-ff/termtris/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "f40e407c1dc70267b788a9b6b2b12b9bb5f191a2a8c6ec10ed1ca98c8d70e6fd"
    license "MIT"
  
    depends_on "python@3.13"
  
    def install
      system "pip3", "install", ".", "--prefix=#{prefix}"
    end
  
    test do
      system "#{bin}/termtris", "--help"
    end
  end
  