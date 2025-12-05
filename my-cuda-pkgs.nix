import ./. {
  config = {
    allowUnfree = true;
    cudaSupport = true;
    cudaForwardCompat = false;
    cudaCapabilities = [
      "6.1"
    ];
  };
}
