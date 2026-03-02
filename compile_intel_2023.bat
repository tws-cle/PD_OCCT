call "C:\Program Files (x86)\Intel\oneAPI\setvars.bat"
call "git config --global --add safe.directory *"
cmake -C C:\pd_occt\intel_2023.cmake  -S . -B C:\build  -G "Visual Studio 17 2022" -A x64 -T "Intel C++ Compiler 2023" -DCMAKE_CXX_STANDARD=14
cmake --build C:\build --config Release --verbose
cmake --install C:\build --config Release --prefix "C:/occt_install/OCCT_intel_2023"