/// @description Menus

if menu = -10
{
if slidetime > 0
slidetime --
else
{
menu = -9
}

//staraptor
if slidetime = 20
play_sfx(sndMegaStaraptor)
else if slidetime = 5
play_sfx(sndDramaticJump)
}
else if menu = -9
{
if slidetime < 8
slidetime ++
else
{
menu = -8
slidetime = 20
}
}
else if menu = -8
{
if slidetime < 100
slidetime += 300/slidetime
else
{
menu = -7
slidetime = 20
}
}
else if menu = -7
{
if slidetime > 0
slidetime --
else
{
menu = -6
slidetime = 20
}
}
else if menu = -6
{
if slidetime > 0
slidetime --
else
{
menu = -5
slidetime = 123
//play_music(mscRuleTheWorld)
}
}
else if menu = -5
{
if slidetime > 0
slidetime --
else
{
if blackscreen < 1.5
blackscreen += 1/60
else
menu = -4
}
}
else if menu = -4
{

}