// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

_id_400E()
{
    return anim._id_400F[randomint( anim._id_400F.size )];
}

main()
{
    var_0 = maps\_utility::_id_2094();

    if ( var_0 <= 0 )
        return;

    animscripts\flashed::_id_2096( _id_400E(), var_0 );
}
