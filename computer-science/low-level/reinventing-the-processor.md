---
title: "Reiventing the processor"
---

- We can do basic operations **(add, sub, mul, div)**
- We have storage for numbers and results **(r0, r1, r2, r3, r4, r5, r6, ..., r15)**
    - They're called registers
    - Each one is **32 bits** alone **(4 bytes == 1 "word")**
- An instructin looks like:
    - `add r3, r1, r2 #r3=r1+r2`
    - `mov r9, 42 #r9=42`
    - `mov r3, r4 #r3=r4`
- We need more storage!
    - For cpu, memory is just a very long array of bytes:

| byte | memory |
|------|--------|
| 0 | 0x73 |
| 1 | 0x75 |
| 2 | 0x62 |
| ... | ... |

- To deal with memory we need two operations:
    - From **memory** to **cpu** occurs `Load`
        - `ldr r2, [0x4] #ldr means load register`
    - From **cpu** to **memory** occurs `Store`
        - `str r2, [0x0] #str means store register`

# References

- [Reinventing the processor](https://www.youtube.com/watch?v=rDnqmVnrZKs)
