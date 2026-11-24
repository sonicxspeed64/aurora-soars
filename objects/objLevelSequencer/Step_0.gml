/// @description Sequencing

if mode = 0
{
if objGlobal.realviewy <= flyto[phase]
{
objGlobal.realviewy = flyto[phase]
objAyuda.yspeed += objGlobal.camyspeed
objGlobal.camyspeed = 0
mode = 1
phase ++
}
}
else if mode = 1
{
if objAyuda.y <= objGlobal.realviewy + 46
{
objGlobal.camyspeed = -1
objAyuda.yspeed -= 1
mode = 2
}
}
else if mode = 2
{
if objGlobal.realviewy <= flyto[phase]
{
mode = 0
objGlobal.realviewy = flyto[phase]
flyto[0] = flyto[phase]
phase ++
}
else
{
objGlobal.realviewy -= 3

if objAyuda.y > flyto[phase - 1] + 46
objAyuda.y = flyto[phase - 1] + 46
}
}