	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p7 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 81: // STATE 203
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p6 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 91: // STATE 33
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p5 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 170: // STATE 203
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p4 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 180: // STATE 33
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p3 */
;
		
	case 181: // STATE 1
		goto R999;

	case 182: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2 */
;
		
	case 183: // STATE 1
		goto R999;

	case 184: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		
	case 185: // STATE 1
		goto R999;

	case 186: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 187: // STATE 1
		;
		now.coche_sec = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 189: // STATE 3
		;
		now.btn_p_princ = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 191: // STATE 5
		;
		now.btn_p_sec = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 193: // STATE 7
		;
		now.t_min = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 195: // STATE 9
		;
		now.t_max = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 197: // STATE 11
		;
		now.t_ambar = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 199: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm */
;
		;
		
	case 201: // STATE 9
		;
		now.fsm_estado = trpt->bup.ovals[6];
		now.btn_p_princ = trpt->bup.ovals[5];
		now.t_ambar = trpt->bup.ovals[4];
		now.t_max = trpt->bup.ovals[3];
		now.t_min = trpt->bup.ovals[2];
		now.peat_sec = trpt->bup.ovals[1];
		now.sem_princ = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		;
		
	case 203: // STATE 22
		;
		now.fsm_estado = trpt->bup.ovals[6];
		now.t_ambar = trpt->bup.ovals[5];
		now.t_max = trpt->bup.ovals[4];
		now.t_min = trpt->bup.ovals[3];
		now.peat_princ = trpt->bup.ovals[2];
		now.sem_sec = trpt->bup.ovals[1];
		now.sem_princ = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		;
		
	case 205: // STATE 35
		;
		now.fsm_estado = trpt->bup.ovals[6];
		now.btn_p_sec = trpt->bup.ovals[5];
		now.t_ambar = trpt->bup.ovals[4];
		now.t_max = trpt->bup.ovals[3];
		now.t_min = trpt->bup.ovals[2];
		now.peat_princ = trpt->bup.ovals[1];
		now.sem_sec = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		;
		
	case 207: // STATE 49
		;
		now.fsm_estado = trpt->bup.ovals[7];
		now.coche_sec = trpt->bup.ovals[6];
		now.t_ambar = trpt->bup.ovals[5];
		now.t_max = trpt->bup.ovals[4];
		now.t_min = trpt->bup.ovals[3];
		now.peat_sec = trpt->bup.ovals[2];
		now.sem_princ = trpt->bup.ovals[1];
		now.sem_sec = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 208: // STATE 57
		;
		p_restor(II);
		;
		;
		goto R999;
	}

