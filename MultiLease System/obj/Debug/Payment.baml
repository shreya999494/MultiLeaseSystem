   M S B A M L   `   `   `  ����L  HMultiLease System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:MultiLease_SystemMultiLease_System  5   	       MultiLease_System.Payment   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:MultiLease_System     5   	     � Title$  Payment��5   	   $��367.259��6   $��346.975��6*   .��5	      � $��	0,0,2,-68q�6   .+�5
   
   �� -   5         ��Name$ DateBox��5
      $
��Left=�6#   $��23��6>   $��
155,26,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��120��6�   6�   �� 5   
   -   5        $ 	AmountBox��5      $
��Left=�6%   $��23��6@   $��
155,72,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��120��6�   6�   �� 5   
   -   5        $ 
LeaseIDBox��5      $
��Left=�6&   $��23��6A   $��155,115,0,0q�6M   $
 Wrap=�6b   $	��Top=�6v   $	��120��6�   6�   �� 5   
   $��Date (yyyy-mm-dd)��6   $
��Left=�6,   $��	16,26,0,0q�6G   $	��Top=�6Z   $	��115��6r   �� 5   
   $��Amount��6   $
��Left=�6!   $��	16,72,0,0q�6<   $	��Top=�6O   $��93��6g   �� 5   
   $��Lease ID��6   $
��Left=�6#   $��
16,115,0,0q�6>   $	��Top=�6R   $��93��6j   �� 5   
   -   5         ��Name$ SubmitPaymentButton��5      $��Submit��6.   $
��Left=�6?   $��226,155,0,0q�6Z   $	��Top=�6o   $��48��6�   6�   �� 5   
   -   5        $ PaymentIDBox��5      $
��Left=�6(   $��23��6C   $��191,199,0,0q�6O   $
 Wrap=�6d   $	��Top=�6x   $��84��6�   6�   �� 5   
   -   5        $ DateVoidBox��5      $
��Left=�6'   $��23��6B   $��191,238,0,0q�6N   $
 Wrap=�6c   $	��Top=�6w   $��84��6�   6�   �� 5   
   $#��Date (for voiding yyyy/mm/dd)��6   $
��Left=�68   $��	0,238,0,0q�6S   $	��Top=�6f   $	��177��6~   �� 5   
   $��Lease ID (for voiding)��6   $
��Left=�61   $��
16,196,0,0q�6L   $	��Top=�6`   $	��143��6x   �� 5   
   -   5        $ VoidPaymentBox��5      $
��Void��6)   $
��Left=�68   $��226,292,0,0q�6S   $	��Top=�6h   $��49��6�   6�   5      5      