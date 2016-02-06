package GLFW3.Hints is

   type Hint is new int;

   type Boolean_Hint is (False, True);
   for Boolean_Hint use (False => 0, True => 1);
   for Boolean_Hint'Size use Hint'Size;

   type Natural_Hint is new Hint range 0 .. Hint'Last;


   type Target is
     (
      Focused,
      Iconified,
      Target_Resizable,
      Visible,
      Decorated,
      Auto_Iconify,
      Floating,
      Red_Bits,
      Green_Bits,
      Blue_Bits,
      Alpha_Bits,
      Depth_Bits,
      Stencil_Bits,
      Accum_Red_Bits,
      Accum_Green_Bits,
      Accum_Blue_Bits,
      Accum_Alpha_Bits,
      Aux_Buffers,
      Stereo,
      Samples,
      Srgb_Capable,
      Refresh_Rate,
      Doublebuffer,
      Client_Api,
      Context_Version_Major,
      Context_Version_Minor,
      Context_Revision,
      Context_Robustness,
      Opengl_Forward_Compat,
      Opengl_Debug_Context,
      Opengl_Profile,
      Context_Release_Behavior
     );


   type Accumulation_Value is new int range 0 .. int'Last;
   type Accumulation_Target is
     (
      Accumulation_Target_Red_Bits,
      Accumulation_Target_Green_Bits,
      Accumulation_Target_Blue_Bits,
      Accumulation_Target_Alpha_Bits
     );




   procedure Set_Window_Hint (T : Target; Value : int) with
     Import,
     Convention => C,
     External_Name => "glfwWindowHint";

   procedure Set_Window_Hint (T : Accumulation_Target; Value : Accumulation_Value) with
     Import,
     Convention => C,
     External_Name => "glfwWindowHint";




private

   for Target use
     (
      Focused                  => 16#00020001#,
      Iconified                => 16#00020002#,
      Target_Resizable                => 16#00020003#,
      Visible                  => 16#00020004#,
      Decorated                => 16#00020005#,
      Auto_Iconify             => 16#00020006#,
      Floating                 => 16#00020007#,
      Red_Bits                 => 16#00021001#,
      Green_Bits               => 16#00021002#,
      Blue_Bits                => 16#00021003#,
      Alpha_Bits               => 16#00021004#,
      Depth_Bits               => 16#00021005#,
      Stencil_Bits             => 16#00021006#,
      Accum_Red_Bits           => 16#00021007#,
      Accum_Green_Bits         => 16#00021008#,
      Accum_Blue_Bits          => 16#00021009#,
      Accum_Alpha_Bits         => 16#0002100A#,
      Aux_Buffers              => 16#0002100B#,
      Stereo                   => 16#0002100C#,
      Samples                  => 16#0002100D#,
      Srgb_Capable             => 16#0002100E#,
      Refresh_Rate             => 16#0002100F#,
      Doublebuffer             => 16#00021010#,
      Client_Api               => 16#00022001#,
      Context_Version_Major    => 16#00022002#,
      Context_Version_Minor    => 16#00022003#,
      Context_Revision         => 16#00022004#,
      Context_Robustness       => 16#00022005#,
      Opengl_Forward_Compat    => 16#00022006#,
      Opengl_Debug_Context     => 16#00022007#,
      Opengl_Profile           => 16#00022008#,
      Context_Release_Behavior => 16#00022009#
     );
   for Target'Size use int'Size;
   pragma Convention (C, Target);




   for Accumulation_Target'Size use int'Size;

   for Accumulation_Target use
     (
      Accumulation_Target_Red_Bits => 16#00021007#,
      Accumulation_Target_Green_Bits => 16#00021008#,
      Accumulation_Target_Blue_Bits => 16#00021009#,
      Accumulation_Target_Alpha_Bits => 16#0002100A#
     );

   pragma Convention (C, Accumulation_Target);


end;
