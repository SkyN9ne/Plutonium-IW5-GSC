// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    if ( isdefined( self.type ) && self.type == "dog" )
        return;

    self._id_247C = "crouch";
    animscripts\utility::_id_247B();
    self endon( "killanimscript" );
    self traversemode( "noclip" );
    var_0 = %ladder_climbup;
    var_1 = %ladder_climboff;
    var_2 = self getnegotiationstartnode();
    self orientmode( "face angle", var_2.angles[1] );
    var_3 = 1;

    if ( isdefined( self._id_0FC6 ) )
        var_3 = self._id_0FC6;

    self setflaggedanimknoballrestart( "climbanim", var_0, %body, 1, 0.1, var_3 );
    var_4 = getmovedelta( var_1, 0, 1 );
    var_5 = self getnegotiationendnode();
    var_6 = var_5.origin - var_4 + ( 0.0, 0.0, 1.0 );
    var_7 = getmovedelta( var_0, 0, 1 );
    var_8 = var_7[2] * var_3 / getanimlength( var_0 );
    var_9 = ( var_6[2] - self.origin[2] ) / var_8;

    if ( var_9 > 0 )
    {
        self.allowpain = 1;
        animscripts\notetracks::_id_0D4F( var_9, "climbanim" );
        self setflaggedanimknoballrestart( "climbanim", var_1, %body, 1, 0.1, var_3 );
        animscripts\shared::_id_0C51( "climbanim" );
    }

    self traversemode( "gravity" );
    self.a._id_0D2B = "run";
    self.a._id_0D26 = "crouch";
}
