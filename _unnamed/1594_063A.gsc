// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_delta_elite_smg_a" );
    codescripts\character::attachhead( "alias_delta_elite_heads", xmodelalias\alias_delta_elite_heads::main() );
    self.voice = "delta";
}

precache()
{
    precachemodel( "body_delta_elite_smg_a" );
    codescripts\character::precachemodelarray( xmodelalias\alias_delta_elite_heads::main() );
}
