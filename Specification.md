

# Specification

This document will explain which part of Requirement document is implemented in the code.





**Open account**. The following image is the use case of the procedure open account, depicted in the requirement document. Here we only have the clerk UI so the process from the customer to the clerk is omitted.



![image-20190513203326351](assets/image-20190513203326351.png)

![image-20190513201400583](assets/image-20190513201400583.png)

| Seq No. in the use case | Counter part in implementation                 |
| ----------------------- | ---------------------------------------------- |
| 2                       | Click button `Open Account`                    |
| 3                       | Input at `Id.` and `Password` field            |
| 3.1.1~3.1.3             | Creation of account is performed in background |
| 3.1.4                   | The message at the center                      |
|                         |                                                |

**Close account**. The following image is the use case of the procedure close account, depicted in the requirement document. 

![image-20190513204336192](assets/image-20190513204336192.png)

![image-20190513201413946](assets/image-20190513201413946.png)

| Seq No. in the use case | Counter part in implementation                              |
| ----------------------- | ----------------------------------------------------------- |
| 2                       | Click button `Close Account`                                |
| 2, 3                    | The process is simplified to input all information at once. |
| 3.1.3                   | The feedback is shown at the center                         |

