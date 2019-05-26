# UI Component explanation



This is the explanation of what the component of each app serves to do.

## UI_Clerk

| Variable               | Type                               | Usage                                                        |
| ---------------------- | ---------------------------------- | ------------------------------------------------------------ |
| UIFigure               | matlab.ui.Figure                   | Main Interface                                               |
| ButtonGroup            | matlab.ui.container.ButtonGroup    | Press buttons in this button group to change UI              |
| open_account           | matlab.ui.control.ToggleButton     | Press this to change to open account UI                      |
| close_account          | matlab.ui.control.ToggleButton     | Press this to change to close account UI                     |
| deposit                | matlab.ui.control.ToggleButton     | Press this to change to deposit UI                           |
| withdraw               | matlab.ui.control.ToggleButton     | Press this to change to withdraw money UI                    |
| transfer               | matlab.ui.control.ToggleButton     | Press this to change to transfer UI                          |
| change_password        | matlab.ui.control.ToggleButton     | Press this to change to change password UI                   |
| next_customer          | matlab.ui.control.Button           | Press this to change to show the next customer number        |
| IdLabel                | matlab.ui.control.Label            | Indicate the right EditField serves to input identity number |
| Identity_Input         | matlab.ui.control.NumericEditField | To input identity number                                     |
| PasswordLabel          | matlab.ui.control.Label            | Indicate the right EditField serves to input password        |
| PW_Input               | matlab.ui.control.EditField        | To input password                                            |
| AccountNoLabel         | matlab.ui.control.Label            | Indicate the right EditField serves to input account number  |
| Account_Input          | matlab.ui.control.NumericEditField | To input account number                                      |
| NewPasswordLabel       | matlab.ui.control.Label            | Indicate the right EditField serves to input new password    |
| New_PW_Input           | matlab.ui.control.EditField        | To input new password                                        |
| AmountLabel            | matlab.ui.control.Label            | Indicate the right EditField serves to input the amount of money |
| Amount_Input           | matlab.ui.control.NumericEditField | To input the amount of money                                 |
| ToAccountNoLabel       | matlab.ui.control.Label            | Indicate the right EditField serves to input the receiver account number in transfer |
| To_Account_Input       | matlab.ui.control.NumericEditField | To input the receiver account number in transfer             |
| Confirm_open_account   | matlab.ui.control.Button           | As the name says                                             |
| Confirm_close_account  | matlab.ui.control.Button           | As the name says                                             |
| Confirm_deposit_money  | matlab.ui.control.Button           | As the name says                                             |
| Confirm_withdraw_money | matlab.ui.control.Button           | As the name says                                             |
| Confirm_change_pw      | matlab.ui.control.Button           | As the name says                                             |
| Confirm_transfer       | matlab.ui.control.Button           | As the name says                                             |
| Message_Feedback       | matlab.ui.control.Label            | To show feedback message                                     |

