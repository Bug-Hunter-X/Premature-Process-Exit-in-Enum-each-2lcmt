# Elixir Enum.each Premature Exit Bug

This repository demonstrates a subtle bug that can occur when using `Enum.each` in Elixir and prematurely exiting the process within the anonymous function. This can lead to unexpected behavior, especially in longer processes where not all items are processed.  The solution shows how to correctly handle such cases using `Enum.map` or other appropriate approaches that avoid process termination within the loop.

## Bug Report
The provided `bug.ex` file shows the buggy code that demonstrates the issue. The loop prematurely terminates because of `Process.exit`, leaving items unprocessed.

## Solution
The solution is presented in `bugSolution.ex`, offering two alternatives to correctly and completely iterate over the list without abrupt process termination.