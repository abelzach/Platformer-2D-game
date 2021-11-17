if (mode != TRANS_MODE.OFF)
{
	if(mode == TRANS_MODE.INTRO)	
	{
		percent = max(0,percent-0.05);
	}
	else{
		percent = min(0,percent+0.05);
	}
	if(percent == 1) || (percent == 0)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO : 
			{
				mode = TRANS_MODE.OFF;	
				break;
			}
			case TRANS_MODE.NEXT : 
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO : 
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART : 
			{
				game_restart();
				break;
			}
			
			
		}
	}
}