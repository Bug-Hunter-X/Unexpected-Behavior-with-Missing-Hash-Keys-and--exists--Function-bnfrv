# Perl Hash 'exists' Function Bug

This example demonstrates an unexpected behavior in Perl when using the `exists` function with hashes.  The `exists` function returns a boolean value indicating whether a key exists in a hash. However, it does not throw an error if the key doesn't exist.

The bug lies in the assumption that simply checking with `exists` before accessing a key is sufficient. This can lead to unexpected behavior and potential errors if the code doesn't properly handle cases where the key is absent. 

**How to reproduce:**
1. Run the `bug.pl` script.
2. Observe that the output doesn't explicitly handle the case of a missing key, even though the code intends to add a new key if it doesn't exist.

**Solution:**
The `bugSolution.pl` script shows a more robust approach, which explicitly handles the case of a missing key and provides a clearer and more predictable way to add new keys to the hash.