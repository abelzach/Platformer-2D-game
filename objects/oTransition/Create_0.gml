
w = display_get_gui_height();
h = display_get_gui_height();
h_half = h/2;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
w_half = w/2;
