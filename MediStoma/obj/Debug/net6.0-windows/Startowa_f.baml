   M S B A M L   `   `   `  ����D  @MediStoma, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:MediStoma	MediStoma  5   	       MediStoma.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:MediStoma     5   	   -   5          �Name$  
Startowa_f��5   	    � Title$ Główne okno programu��5   	   $	��600��6&   $	��800��63   
������� � 
ResizeMode$ NoResize=�6R    � WindowStartupLocation$ CenterScreen=�6h   .��5	      � .+�5
   
   �� -   5         ��Name$ btnKartoteka��5
      $��50��6'   $	��200��63   $��561,32,39,502q�6Z   .��5      ]� .+�5      �� $
��Left=�6   $��/Icons/64x64/patient.png��6.   6R   �� 5      $��Right=�6   	Gabinet6<   5      5      �� 5   
   -   5        $ 
btnGabinet��5      $��50��6%   $	��200��61   $��561,163,39,371q�6=   .��5      ��  �� Orientation$ 
Horizontal=�6   $
��Left=�62   .+�5      �� $��43��6   $��58��6$   $"��/Icons/64x64/dental-care.png��6/   $
��None=�6U   $��Stretch=�6d   �� 5      �� 6   $�Gabinet��6!   63   5      5      �� 5   
   -   5        $ 
btnWyjscie��5      $��50��6%   $	��200��61   $��555,261,45,273q�6V   .��5      �� $ 
Horizontal=�6   $
��Left=�62   .+�5      �� $��34��6   $��72��6$   $��/Icons/64x64/exit.png��6/   $
��None=�6N   �� 5      �� 6   $�Wyjście��6!   63   5      5      �� 5   
   -   5         ��Name$ lblTytulAplikacji��5      $��	MEDISTOMA��6+   $
��Left=�6?   $��	10,0,0,10q�6Z   $��Bottom=�6m   $	��679��6�   $��57��6�   $��36(�6�   $
��Thin"�6�   $��Center=�6�   ���	#FF0096C7$��2��6  ��6�   Z� 6  �� 5   
   -   5         ��Name$ imgTlo��5      $
��Left=�6    $	��502��6;   $��	10,10,0,0q�6H   $	��Top=�6[   $	��509��6s   $!��/Obrazki/Tła/main-menu.png��6   �� 5   
   -   5        $ lblStatusPolaczenia��5      $"��Status połączenia z bazą:��6-   $
��Left=�6Q   $��590,486,0,0q�6l   $	��Top=�6�   �� 5   
   -   5        $ lblWynikStatusuPolaczenia��5      $��BŁĄD��63   $
��Left=�6B   $��736,486,0,0q�6]   $	��Top=�6r   
�������
���  ��$
��Bold"�6�   5       5!      