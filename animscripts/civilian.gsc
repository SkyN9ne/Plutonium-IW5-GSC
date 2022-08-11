// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_id_400A()
{
    self endon( "killanimscript" );
    self clearanim( %root, 0.2 );

    if ( animscripts\utility::_id_0A69() )
        var_0 = "idle_combat";
    else
        var_0 = "idle_noncombat";

    var_1 = undefined;

    if ( isdefined( self._id_1032 ) && isdefined( level._id_0C59[self._id_1032] ) )
        var_1 = level._id_0C59[self._id_1032][var_0];

    if ( !isdefined( var_1 ) )
    {
        if ( !isdefined( level._id_0C59["default_civilian"] ) )
            return;

        var_1 = level._id_0C59["default_civilian"][var_0];
    }

    thread _id_400B();

    for (;;)
    {
        self setflaggedanimknoball( "idle", common_scripts\utility::random( var_1 ), %root, 1, 0.2, 1 );
        self waittillmatch( "idle", "end" );
    }
}

_id_400B()
{
    self endon( "killanimscript" );

    while ( !isdefined( self._id_400C ) )
        wait 1;
}

_id_400D()
{
    _id_400A();
}

_id_400E()
{
    return anim._id_400F[randomint( anim._id_400F.size )];
}
