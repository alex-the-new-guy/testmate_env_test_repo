#pragma once

extern "C"
{
  __declspec(dllexport) int add(int a, int b);
}

// BOOL WINAPI DllMain(
//     HINSTANCE hinstDLL,  // handle to DLL module
//     DWORD fdwReason,     // reason for calling function
//     LPVOID lpReserved )  // reserved
// {}