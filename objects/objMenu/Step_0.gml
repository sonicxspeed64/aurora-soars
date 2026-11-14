/// @description Menus

if menu = -10
{
if slidetime > 0
slidetime --
else
{
menu = -9
}
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

}
}
else if menu = -6
{

}