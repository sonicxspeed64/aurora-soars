/// @description Set Size


ini_open("Ayuda.Win")

window_set_position(ini_read_real("Options","WinX",window_get_x()),ini_read_real("Options","WinY",window_get_y()))

ini_close()