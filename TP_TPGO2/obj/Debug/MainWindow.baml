   M S B A M L   `   `   `  ����U  QGraphSharp.Controls, Version=1.0.3438.42543, Culture=neutral, PublicKeyToken=nullV>clr-namespace:GraphSharp.Controls;assembly=GraphSharp.ControlsGraphSharp.Controls  5       TP_TPGO2   TP_TPGO2.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      O
graphsharp>clr-namespace:GraphSharp.Controls;assembly=GraphSharp.Controls  5      -   5        (  "MahApps.Metro.Controls.MetroWindow   Name$  window��5       � Title$, &Fenêtre principale - Graphes connexes��5      $	��700��63   $
��1000��6@    � WindowStartupLocation$ CenterScreen=�6M      AccentColorBrush   	GlowBrush# �   6r    � 	Resources 5
      '   !GraphSharp.Controls.VertexControl �� 
TargetType �� Property �� Value �� 
TargetType	 �� CornerRadius
 �� Padding J� Effect3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   ShadowDepth   Color   Opacity   	Direction   Vertex%   GraphSharp.Controls.EdgeControl �� 	Resources  Key  ToolTipContent��%J  '        '  f    7  �� 5   
   "  6   .�5      ��  � �� 5      �� 5      "  6&   .R�5      �� 
���""��
�������$��1q�5   !   $	 10,10,10,10��5   !   $	
 5pxq�5   !    5        5   "   $ 2Q�63   $ 3Q�6B   $ 
LightCoral��6R   $	 0.5Q�6e   $	 315Q�6s   ._�5      �� #��z 6/   5      5      5      5      �� 5   
   "  6    5      ��_� 5       ToolTipContent .��5!      �� .+�5"      �� $
��Bold"�6$   5#      5$      5%      .�5&      ��  �@�ToolTip8   6(   5'      5(      .��5*      �� -   5         ��Name$ canvas��5*      .+�5+   
   �� $��On commence à dessiner !��6   $
��Wrap=�64    �� Left$	 400��6H   
 �� Top$ 26��6Z   $	��258��6j   $��Italic$�6v   $��SemiBold"�6�   
���""��$��20(�6�   $��46��6�   �� 5,   
   -   5        $��Ajouter noeud��5,      $	 793��6)   $ 95��6;   $	��115��6K   $��32��6W   6c   �� 5-   
   -   5        $��Supprimer noeud��5-      $	 793��6+   $	 132��6=   $	��115��6N   $��32��6Z   6f   �� 5.   
   -   5        $��combo_delete��5.      $	 925��6'   $	 132��69   $��45��6J   �� 5/   
   -   5        $��Ajouter arc��5/      $	 762��6'   $	 223��69   $	��115��6J   $��32��6V   6b   �� 50   
   -   5        $��Supprimer arc��50      $	 762��6)   $	 260��6;   $	��115��6L   $��32��6X   6d   �� 51   
   $��De��6   $	 887��6   $	 230��6/   �� 52   
   $
��Vers��6   $	 941��6   $	 230��61   �� 53   
   -   5        $��
combo_from��53      $	 887��6%   $	 268��67   $��45��6H   �� 54   
   -	   5        $��combo_to��54      $	 941��6#   $	 268��65   $��45��6F   �� 55   
   -
   5        $)��#Montrer les points
d'articulations��55      $	 832��6G   $	 433��6Y   $	��115��6j   $��63��6v   $��SemiBold"�6�   ���	#FF3EEC3E6�   �� 56   
   
���   ����	#FFFFE0F0$��4q�6<   $	��547��6P   $ 10��6]   $	 113��6n   $	��747��6   ._�57      %   GraphSharp.Controls.GraphLayout  -   5          Name$ graph_layout��58      ���	#FFFFE0F0�   �GraphSharp.Controls.GraphLayout`3[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[QuickGraph.IEdge`1[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], QuickGraph, Version=3.2.40122.0, Culture=neutral, PublicKeyToken=f3fb40175eec2af3],[QuickGraph.IBidirectionalGraph`2[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[QuickGraph.IEdge`1[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], QuickGraph, Version=3.2.40122.0, Culture=neutral, PublicKeyToken=f3fb40175eec2af3]], QuickGraph, Version=3.2.40122.0, Culture=neutral, PublicKeyToken=f3fb40175eec2af3]]   LayoutAlgorithmType$ CompoundFDP��5;      "   OverlapRemovalAlgorithmType$	 FSA��5<      $��10q�5=         Graph 5:      �� *GraphToVisualize+ �� ElementName$ window��5=      5>      5@      5A      