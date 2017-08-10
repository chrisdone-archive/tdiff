# tdiff

Just prints time diffs between lines. Example below:

    bash-3.2$ stack install 2>/dev/stdout | tdiff
    (330.69 ms) tdiff-0.1.0.0: build (exe)
    (47.16 ms) Preprocessing executable 'tdiff' for tdiff-0.1.0.0...
    (137.58 ms) [1 of 1] Compiling Main             ( app/Main.hs, .stack-work/dist/x86_64-osx/Cabal-1.24.2.0/build/tdiff/tdiff-tmp/Main.o )
    (501.14 ms) Linking .stack-work/dist/x86_64-osx/Cabal-1.24.2.0/build/tdiff/tdiff ...
    (443.48 ms) tdiff-0.1.0.0: copy/register
    (59.54 ms) Installing executable(s) in
    (49.48 µs) /Users/chris/Work/tdiff/.stack-work/install/x86_64-osx/lts-9.0/8.0.2/bin
    (26.65 ms) Copying from /Users/chris/Work/tdiff/.stack-work/install/x86_64-osx/lts-9.0/8.0.2/bin/tdiff to /Users/chris/.local/bin/tdiff
    (24.15 ms)
    (60.49 µs) Copied executables to /Users/chris/.local/bin:
    (28.72 µs) - tdiff
