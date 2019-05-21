# buildJetsonNanoKernel

## Usage
```bash
$ git clone https://github.com/Kashu7100/buildJetsonNanoKernel.git
$ cd buildJetsonNanoKernel
```
gets the kernel sources from the NVIDIA developer website
```bash
./prepare_source.sh
```
fixes up the makefiles so that the source can be compiled on the Jetson
```bash
./make_kernel.sh
```
copies over the newly built Image and zImage files into the /boot directory. 
```bash
./set_boot.sh
```
