with Ada.Text_IO;

package body Day_1 is
   
   procedure Run is
   begin
      Ada.Text_IO.Put_Line("Number of increasing depths is" & Natural'Image(Count_Increasing(Day_1_Input)));
   end Run;
   
   function Count_Increasing (Depths : Depths_Type) return Natural is
      Count : Natural := 0;
      Depth_Current : Natural;
      Depth_Previous : Natural;
   begin
      for I in 1 .. Depths'Length - 1 loop
         Depth_Previous := Depths(I-1);
         Depth_Current := Depths(I);
         
         if Depth_Current > Depth_Previous then
            Count := Count + 1;
         end if;
      end loop;
      
      return Count;
   end Count_Increasing;
   

end Day_1;
