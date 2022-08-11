// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._id_3AA1 = "";
    self._id_3AA2 = "";
    self.team = "axis";
    self.type = "human";
    self._id_218D = "regular";
    self.accuracy = 0.25;
    self.health = 150;
    self.secondaryweapon = "";
    self._id_20A3 = "glock";
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 4 ) )
    {
        case 0:
            self.weapon = "p90";
            break;
        case 1:
            self.weapon = "p90_eotech";
            break;
        case 2:
            self.weapon = "pp90m1";
            break;
        case 3:
            self.weapon = "pp90m1_reflex";
            break;
    }

    _id_4957::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_4957::precache();
    precacheitem( "p90" );
    precacheitem( "p90_eotech" );
    precacheitem( "pp90m1" );
    precacheitem( "pp90m1_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
