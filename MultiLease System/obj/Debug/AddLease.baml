   M S B A M L   `   `   `  ����L  HMultiLease System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:MultiLease_SystemMultiLease_System  5   	        MultiLease_System.AddLease   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:MultiLease_System     5   	     � Title$  AddLease��5   	   $��381.139��6   $��445.196��6+   .��5	      � $��	0,0,0,-76q�6   $	��346��6   $	��Top=�6+   .+�5
   
   �� -   5         ��Name$ FirstPaymentDueBox��5
      $
��Left=�6.   $��23��6I   $��
276,55,0,0q�6U    �� TextWrapping$
 Wrap=�6i   $	��Top=�6}   $	��120��6�   6�   �� 5   
   -   5         ��Name$ DateLeaseBegin��5      $(��"Date The Lease Begins (yyyy-mm-dd)��6(   $
��Left=�6U   $��	18,14,0,0q�6p   $	��Top=�6�   $	��206��6�   �� 5   
   -   5        $ FirstPayment��5      $��First Payment Date��6&   $
��Left=�6C   $��	18,52,0,0q�6^   $	��Top=�6q   �� 5   
   -   5        $ AmountMonthlyPay��5      $��Monthly Payment Amount��6*   $
��Left=�6K   $��	18,90,0,0q�6f   $	��Top=�6y   �� 5   
   -   5        $ NumbOfPayments��5      $ ��Number of Monthly Payments��6(   $
��Left=�6M   $��
18,125,0,0q�6h   $	��Top=�6|   �� 5   
   -   5        $ VehiculeLeased��5      $��Vehicles Leased��6(   $
��Left=�6B   $��
18,160,0,0q�6]   $	��Top=�6q   �� 5   
   -   5        $ CustomerLeasing��5      $��Customer Lease is for��6)   $
��Left=�6I   $��
18,197,0,0q�6d   $	��Top=�6x   �� 5   
   -   5         ��Name$ SubmitAddLease��5      $��Submit��6)   $
��Left=�6:   $��212,308,0,0q�6U   $	��Top=�6j   $��75��6�   6�   �� 5   
   -	   5        $ DateLeaseBeginBox��5      $
��Left=�6-   $��23��6H   $��
276,14,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��120��6�   6�   �� 5   
   -
   5        $ NumbMonthlyPayBox��5      $
��Left=�6-   $��23��6H   $��276,128,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��120��6�   6�   �� 5   
   -   5        $ VehicleLeasedBox��5      $
��Left=�6,   $��23��6G   $��276,160,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��120��6�   6�   �� 5   
   -   5        $ CustLeasingBox��5      $
��Left=�6*   $��23��6E   $��276,200,0,0q�6Q   $
 Wrap=�6f   $	��Top=�6z   $	��120��6�   6�   �� 5   
   -   5        $ AmountMonthPayBox��5      $
��Left=�6-   $��23��6H   $��
276,90,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��120��6�   6�   �� 5   
   -   5        $ UpdateLease��5      $��Update Lease��6&   $
��Left=�6=   $��311,308,0,0q�6X   $	��Top=�6m   $��85��6�   6�   �� 5   
   -   5        $ 
LeaseIDBox��5      $
��Left=�6&   $��23��6A   $��335,257,0,0q�6M   $
 Wrap=�6b   $	��Top=�6v   $��61��6�   6�   �� 5   
   $��Lease ID (for updates)��6   $
��Left=�61   $��
18,257,0,0q�6L   $	��Top=�6`   $	��137��6x   5      5      