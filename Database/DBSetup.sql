��U S E   [ m a s t e r ]  
 G O  
 / * * * * * *   O b j e c t :     D a t a b a s e   [ P o d d a m m i t ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 0   P M   * * * * * * /  
 C R E A T E   D A T A B A S E   [ P o d d a m m i t ]  
   C O N T A I N M E N T   =   N O N E  
   O N     P R I M A R Y    
 (   N A M E   =   N ' P o d d a m m i t ' ,   F I L E N A M E   =   N ' C : \ P r o g r a m   F i l e s \ M i c r o s o f t   S Q L   S e r v e r \ M S S Q L 1 4 . N S S S Q L S E R V E R \ M S S Q L \ D A T A \ P o d d a m m i t . m d f '   ,   S I Z E   =   8 1 9 2 K B   ,   M A X S I Z E   =   U N L I M I T E D ,   F I L E G R O W T H   =   6 5 5 3 6 K B   )  
   L O G   O N    
 (   N A M E   =   N ' P o d d a m m i t _ l o g ' ,   F I L E N A M E   =   N ' C : \ P r o g r a m   F i l e s \ M i c r o s o f t   S Q L   S e r v e r \ M S S Q L 1 4 . N S S S Q L S E R V E R \ M S S Q L \ D A T A \ P o d d a m m i t _ l o g . l d f '   ,   S I Z E   =   8 1 9 2 K B   ,   M A X S I Z E   =   2 0 4 8 G B   ,   F I L E G R O W T H   =   6 5 5 3 6 K B   )  
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   C O M P A T I B I L I T Y _ L E V E L   =   1 4 0  
 G O  
 I F   ( 1   =   F U L L T E X T S E R V I C E P R O P E R T Y ( ' I s F u l l T e x t I n s t a l l e d ' ) )  
 b e g i n  
 E X E C   [ P o d d a m m i t ] . [ d b o ] . [ s p _ f u l l t e x t _ d a t a b a s e ]   @ a c t i o n   =   ' e n a b l e '  
 e n d  
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A N S I _ N U L L _ D E F A U L T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A N S I _ N U L L S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A N S I _ P A D D I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A N S I _ W A R N I N G S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A R I T H A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A U T O _ C L O S E   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A U T O _ S H R I N K   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S   O N    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   C U R S O R _ C L O S E _ O N _ C O M M I T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   C U R S O R _ D E F A U L T     G L O B A L    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   C O N C A T _ N U L L _ Y I E L D S _ N U L L   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   N U M E R I C _ R O U N D A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   Q U O T E D _ I D E N T I F I E R   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   R E C U R S I V E _ T R I G G E R S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T     D I S A B L E _ B R O K E R    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S _ A S Y N C   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   D A T E _ C O R R E L A T I O N _ O P T I M I Z A T I O N   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   T R U S T W O R T H Y   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   A L L O W _ S N A P S H O T _ I S O L A T I O N   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   P A R A M E T E R I Z A T I O N   S I M P L E    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   R E A D _ C O M M I T T E D _ S N A P S H O T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   H O N O R _ B R O K E R _ P R I O R I T Y   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   R E C O V E R Y   S I M P L E    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T     M U L T I _ U S E R    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   P A G E _ V E R I F Y   C H E C K S U M      
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   D B _ C H A I N I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   F I L E S T R E A M (   N O N _ T R A N S A C T E D _ A C C E S S   =   O F F   )    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   T A R G E T _ R E C O V E R Y _ T I M E   =   6 0   S E C O N D S    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   D E L A Y E D _ D U R A B I L I T Y   =   D I S A B L E D    
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T   Q U E R Y _ S T O R E   =   O F F  
 G O  
 U S E   [ P o d d a m m i t ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E p i s o d e s ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E p i s o d e s ] (  
 	 [ I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ T y p e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ G e n r e I d ]   [ i n t ]   N O T   N U L L ,  
 	 [ A u d i o ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I m a g e ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ E x p l i c i t C o n t e n t ]   [ i n t ]   N U L L ,  
 	 [ P u b D a t e M s ]   [ i n t ]   N U L L ,  
 	 [ P o d c a s t ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ E p i s o d e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P l a y l i s t E p i s o d e ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ] (  
 	 [ P l a y l i s t I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ E p i s o d e I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P l a y l i s t s ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P l a y l i s t s ] (  
 	 [ T i t l e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ U s e r I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ T y p e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ G e n r e I d ]   [ i n t ]   N O T   N U L L ,  
 	 [ E x p l i c i t C o n t e n t ]   [ i n t ]   N O T   N U L L ,  
 	 [ I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ E p i s o d e I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P l a y l i s t s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P o d c a s t E p i s o d e ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ] (  
 	 [ I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ P o d c a s t I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ E p i s o d e I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P o d c a s t s ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P o d c a s t s ] (  
 	 [ I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ A u d i o ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ I m a g e ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ T i t l e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ T y p e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ G e n r e I d s ]   [ i n t ]   N U L L ,  
 	 [ T h u m b n a i l ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ L i s t e n S c o r e ]   [ d e c i m a l ] ( 1 8 ,   0 )   N U L L ,  
 	 [ T o t a l E p i s o d e s ]   [ i n t ]   N U L L ,  
 	 [ E x p l i c i t C o n t e n t ]   [ i n t ]   N U L L ,  
 	 [ E p i s o d e s ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P o d c a s t s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r s ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ U s e r s ] (  
 	 [ F i r e b a s e K e y ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ U s e r I d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L ,  
 	 [ F i r s t N a m e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ L a s t N a m e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ U s e r s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ U s e r I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ I X _ P l a y l i s t s ]         S c r i p t   D a t e :   1 2 / 1 1 / 2 0 2 1   1 : 5 7 : 2 1   P M   * * * * * * /  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ I X _ P l a y l i s t s ]   O N   [ d b o ] . [ P l a y l i s t s ]  
 (  
 	 [ T i t l e ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E p i s o d e s ]   A D D     C O N S T R A I N T   [ D F _ E p i s o d e s _ I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ]   A D D     C O N S T R A I N T   [ D F _ P l a y l i s t E p i s o d e _ P l a y l i s t I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ P l a y l i s t I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ]   A D D     C O N S T R A I N T   [ D F _ P l a y l i s t E p i s o d e _ E p i s o d e I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ E p i s o d e I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t s ]   A D D     C O N S T R A I N T   [ D F _ P l a y l i s t s _ U s e r I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ U s e r I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t s ]   A D D     C O N S T R A I N T   [ D F _ P l a y l i s t s _ I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t s ]   A D D     C O N S T R A I N T   [ D F _ P l a y l i s t s _ E p i s o d e I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ E p i s o d e I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]   A D D     C O N S T R A I N T   [ D F _ P o d c a s t E p i s o d e _ I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]   A D D     C O N S T R A I N T   [ D F _ P o d c a s t E p i s o d e _ P o d c a s t I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ P o d c a s t I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]   A D D     C O N S T R A I N T   [ D F _ P o d c a s t E p i s o d e _ E p i s o d e I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ E p i s o d e I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t s ]   A D D     C O N S T R A I N T   [ D F _ P o d c a s t s _ I d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U s e r s ]   A D D     C O N S T R A I N T   [ D F _ U s e r s _ U i d ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ U s e r I d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P l a y l i s t E p i s o d e _ E p i s o d e s ]   F O R E I G N   K E Y ( [ E p i s o d e I d ] )  
 R E F E R E N C E S   [ d b o ] . [ E p i s o d e s ]   ( [ I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ]   C H E C K   C O N S T R A I N T   [ F K _ P l a y l i s t E p i s o d e _ E p i s o d e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P l a y l i s t E p i s o d e _ P l a y l i s t s ]   F O R E I G N   K E Y ( [ P l a y l i s t I d ] )  
 R E F E R E N C E S   [ d b o ] . [ P l a y l i s t s ]   ( [ I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t E p i s o d e ]   C H E C K   C O N S T R A I N T   [ F K _ P l a y l i s t E p i s o d e _ P l a y l i s t s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P l a y l i s t s _ U s e r s ]   F O R E I G N   K E Y ( [ U s e r I d ] )  
 R E F E R E N C E S   [ d b o ] . [ U s e r s ]   ( [ U s e r I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P l a y l i s t s ]   C H E C K   C O N S T R A I N T   [ F K _ P l a y l i s t s _ U s e r s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P o d c a s t E p i s o d e _ E p i s o d e s ]   F O R E I G N   K E Y ( [ E p i s o d e I d ] )  
 R E F E R E N C E S   [ d b o ] . [ E p i s o d e s ]   ( [ I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]   C H E C K   C O N S T R A I N T   [ F K _ P o d c a s t E p i s o d e _ E p i s o d e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P o d c a s t E p i s o d e _ P o d c a s t s ]   F O R E I G N   K E Y ( [ P o d c a s t I d ] )  
 R E F E R E N C E S   [ d b o ] . [ P o d c a s t s ]   ( [ I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o d c a s t E p i s o d e ]   C H E C K   C O N S T R A I N T   [ F K _ P o d c a s t E p i s o d e _ P o d c a s t s ]  
 G O  
 U S E   [ m a s t e r ]  
 G O  
 A L T E R   D A T A B A S E   [ P o d d a m m i t ]   S E T     R E A D _ W R I T E    
 G O  
 