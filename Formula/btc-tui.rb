class BtcTui < Formula
  include Language::Python::Virtualenv

  desc "BTC live trade terminal with candlestick chart"
  homepage "https://github.com/bscript/btc-tui"
  url "https://files.pythonhosted.org/packages/source/b/btc-tui/btc_tui-0.1.3.tar.gz"
  sha256 "ac2b838a17e700f006d520d9ef9cd11cb53a47c2c0d445808f4bbeab532c3d69"
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
