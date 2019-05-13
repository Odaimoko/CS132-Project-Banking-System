

# Specification

This document will explain which part of Requirement document is implemented in the code.





**Open account**. The following image is the use case of the procedure open account, depicted in the requirement document. Here we only have the clerk UI so the process from the customer to the clerk is omitted.



![image-20190513222322003](assets/image-20190513222322003.png)

![image-20190513201400583](assets/image-20190513201400583.png)

| Seq No. in the use case | Counter part in implementation                 |
| ----------------------- | ---------------------------------------------- |
| 2                       | Click button `Open Account`                    |
| 3                       | Input at `Id.` and `Password` field            |
| 3.1.1~3.1.3             | Creation of account is performed in background |
| 3.1.4, 3.1.5            | The message at the center                      |
|                         |                                                |

**Close account**. The following image is the use case of the procedure close account, depicted in the requirement document. 

![image-20190513222359425](assets/image-20190513222359425.png)

![image-20190513201413946](assets/image-20190513201413946.png)

| Seq No. in the use case | Counter part in implementation                               |
| ----------------------- | ------------------------------------------------------------ |
| 2                       | Click button `Close Account`                                 |
| 2, 3                    | The process is simplified to input all information at once. Input person `identity number, password` and `account number`. |
| 3.1.3                   | The feedback is shown at the center.                         |



**Change password**.

![image-20190513222710709](assets/image-20190513222710709.png)



![image-20190513221903119](assets/image-20190513221903119.png)



| Seq No. in the use case | Counter part in implementation                               |
| ----------------------- | ------------------------------------------------------------ |
| 2                       | Click button `Change Passsword`                              |
| 2, 3                    | The process is simplified to input all information at once. Input person `account number`, password` and `new password`. |
| 3.1.3                   | The feedback is shown at the center.                         |



**Deposit**.

![image-20190513223256136](assets/image-20190513223256136.png)

![image-20190513221455523](assets/image-20190513221455523.png)



| Seq No. in the use case | Counter part in implementation                               |
| ----------------------- | ------------------------------------------------------------ |
| 2                       | Click button `Deposit`                                       |
| 2, 3                    | The process is simplified to input all information at once. Input person `account number`, `Amount`. |
| 3.1.3                   | The feedback is shown at the center.                         |

