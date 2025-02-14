# Assignment 3: Basic Erlang Programming
## Team: Aaron Patel, Nicholas Sanaie, Srikar Sannidhi

### Prerequisites
- Install Erlang/OTP on your system from [Erlang.org](https://www.erlang.org/downloads)

### Running the Program

1. **Start Erlang Shell:**  
    Navigate to the directory of the project, then run:
    ```sh
    erl
    ```
    You should see Erlang start up

2. **Compile/Run:**  
    Compile and run the modules:
    ```erlang
    c(p1).
    p1:main().

    c(p2).
    p2:start().
    ```
    > **Note:** After entering an integer, be sure to type in `"."` before pressing Enter to specify the end of input. This is part of Erlang syntax when using `io:read/1`

3. **Exit the Erlang Shell:**  
    To exit the shell, press `Ctrl+G`, then type `"q"` and hit Enter
