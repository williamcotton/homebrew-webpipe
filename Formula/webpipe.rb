class Webpipe < Formula
  desc "Pipeline-based web API runtime"
  homepage "https://github.com/williamcotton/webpipe-rs"
  url "https://github.com/williamcotton/webpipe-rs.git", tag: "v2.0.0"
  license "MIT"
  head "https://github.com/williamcotton/webpipe-rs.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "webpipe", shell_output("#{bin}/webpipe --version")
  end
end
