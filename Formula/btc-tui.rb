class BtcTui < Formula
  include Language::Python::Virtualenv

  desc "BTC live trade terminal with candlestick chart"
  homepage "https://github.com/YOUR_USERNAME/btc-tui"
  url "https://files.pythonhosted.org/packages/source/b/btc-tui/btc_tui-0.1.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256_AFTER_PYPI_UPLOAD"
  license "MIT"
  head "https://github.com/YOUR_USERNAME/btc-tui.git", branch: "main"

  bottle do
    # Bottles will be generated automatically by GitHub Actions
  end

  depends_on "python@3.12"

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/source/w/websockets/websockets-14.2.tar.gz"
    sha256 "9e9b4aa3d5900c8f54a1e7858f9a6f1a0ccd5e6bfbce9b89a8a4fc83c8d6eb33"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_predicate bin/"btc-tui", :exist?
  end
end
