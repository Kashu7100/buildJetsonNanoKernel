# buildJetsonNanoKernel
Scripts to help build the 4.9 kernel and modules onboard the Jetson Nano.

## Usage
Clone the repository.
```bash
$ git clone https://github.com/Kashu7100/buildJetsonNanoKernel.git
$ cd buildJetsonNanoKernel/scripts
```
Get the kernel sources from the [NVIDIA Jetson Download Center](https://developer.nvidia.com/embedded/downloads).
```bash
./prepare_source.sh
```
Fix up the makefiles so that the source can be compiled on the Jetson.
```bash
./make_kernel.sh
```
Copy over the newly built Image and zImage files into the /boot directory. 
```bash
./set_boot.sh
```
