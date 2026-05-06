class BtcTui < Formula
  include Language::Python::Virtualenv

  desc "BTC live trade terminal with candlestick chart"
  homepage "https://github.com/bscript/btc-tui"
  url "https://files.pythonhosted.org/packages/source/b/btc-tui/btc_tui-0.1.0.tar.gz"
  sha256 "450a26d0dca0710e5e9db12274535f88e198a2331d073d1876f0957ff89a5de7"
  license "MIT"
  head "https://github.com/bscript/btc-tui.git", branch: "main"

  bottle do
    # Bottles will be generated automatically by GitHub Actions
  end

  depends_on "python@3.12"

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/source/w/websockets/websockets-14.2.tar.gz"
    sha256 "5059ed9c54945efb321f097084b4c7e52c246f2c869815876a69d1efc4ad6eb5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"btc-tui", :exist?
  end
end
