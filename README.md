# Banking System 

This is the project for CS132 Software Engineering @ Shanghaitech.



# User manual

## How to run GUI

Run your matlab and change directory to `ui`. Type

```
run
```

and then a window like the following will pop up. This GUI serves as the actions a clerk can take at the counter.

![image-20190513195900070](assets/image-20190513195900070.png)

We will introduce how to use the system according to iteration phase specified in [Iteration plan](#iteration-plan).

## Iteration 0

**Open account**. It is the default choice. Input the *Identity numer* and the *password*, the system will open an account for the customer and the account will have a account number associated with it. Customer should remember this number as it will be the entry to perform further actions.

![image-20190513201400583](assets/image-20190513201400583.png)

**Close account**. Input the *Identity numer*, the *password* and the *account number*. if they are verified, the customer can close account.

![image-20190513201413946](assets/image-20190513201413946.png)

If any of three pieces of information is input wrongly, the removal will fail.

![image-20190513201431578](assets/image-20190513201431578.png)



## Iteration plan

Banking System 1.0 (can open account, close account and change password)

Banking System 1.1 (add deposit, withdraw and transfer)

Banking System 2.0 (add the ticket system, have a better user interface)

Banking System 3.0 release (add ATM system, can deposit/withdraw via ATM)


Banking System 3.1 (add the ticket system, have a better user interface)