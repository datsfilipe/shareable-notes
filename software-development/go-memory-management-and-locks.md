---
title: 'Golang Memory Management & Locks'
---

## Stack and Heap in Go

- stack:
  - desc.: stores data whose the size and usage can be predicted by the go compiler, eg. local function variables, function arguments, return values, etc.
  - management: the stack is managed automatically and uses LIFO (Last-in-first-out) algorithm principle. When a function is called, all associated data is placed on top of the stack, and when the function finishes, this data is removed from the stack.
- heap:
  - desc.: data that changes dynamically during execution or requires access beyond the scope of a function cannot be placed on the stack because the compiler cannot predict its usage, so this data is stored in the heap.
  - management: unlike the stack, retrieving data from the heap and managing it are more costly processes.

- GOGC: is used to define gargage collector acting periods. The default is 100, so the GC is called when heap size reaches 100% the size of the live heap (memory marked as “live” in the previous garbage collection cycle). This env var can be modified to call the GC more or less times, and even to disable it.

- GOMEMLIMIT: is used to limit the app memory. When you need a less resource usage, for example when your container is set to 10MB of memory, setting GOMEMLIMIT to a number of 10MB (80 % max container memory) is a good practice and helps avoid avoiding OOM (Out of memory crash error).

## Locks and RWMutex

- RWMutex: read and write locks. Lock everything inside the scope from being accessed by other goroutines in execution, so they wait until the unlock.
- Channels: those can be used as a semaphore to lock too, but the best usage for channels is when you need to share information between goroutines.
