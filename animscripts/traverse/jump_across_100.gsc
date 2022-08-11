// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    if ( self.type == "dog" )
    {
        animscripts\traverse\shared::_id_0176( "window_40", 20 );
        return;
    }

    self._id_247C = "stand";
    animscripts\utility::_id_247B();
    self endon( "killanimscript" );
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0.angles[1] );
    var_1 = [];
    var_1[0] = %jump_across_100_spring;
    var_1[1] = %jump_across_100_lunge;
    var_1[2] = %jump_across_100_stumble;
    var_2 = var_1[randomint( var_1.size )];
    self setflaggedanimknoballrestart( "jumpanim", var_2, %body, 1, 0.1, 1 );
    animscripts\shared::_id_0C51( "jumpanim" );
}
