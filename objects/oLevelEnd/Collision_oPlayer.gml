
with(oPlayer)
{
	if(hascontrol){
		hascontrol = false;
		Script_Slide_Transition(TRANS_MODE.GOTO,other.target);
	}
}