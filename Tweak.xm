#include <substrate.h>

// function pointer that points to the original implementation of amIJailbroken().
static BOOL (*orig_amIJailbroken)(void);

// hooked function implementation.
BOOL hook_amIJailbroken(void) {
    // Always return NO
    return NO;
}

// "%ctor" is a special macro provided by Substrate that acts as the constructor for the tweak.
%ctor {
    // Finds the memory address of the amIJailbroken() function by its symbol name.
    void* amIJailbroken = MSFindSymbol(NULL, "_$s16IOSSecuritySuiteAAC13amIJailbrokenSbyFZ");




    if (amIJailbroken)

        // "MSHookFunction": Replaces the original function with the custom hook "hook_amIJailbroken()" function.
        // Technically, we don't need to store the original function pointer, but it's good practice
        MSHookFunction(amIJailbroken, (void *)hook_amIJailbroken, (void **)&orig_amIJailbroken);
}
