#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p7 */
	case 3: // STATE 1 - _spin_nvr.tmp:202 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:203 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][3] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:204 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][5] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:205 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][7] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 9 - _spin_nvr.tmp:206 - [(t_ambar)] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][9] = 1;
		if (!(((int)now.t_ambar)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 16 - _spin_nvr.tmp:211 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][16] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 18 - _spin_nvr.tmp:212 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][18] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 20 - _spin_nvr.tmp:213 - [(((!((sem_princ==VERDE))&&(t_max&&t_min))||(!((sem_princ==VERDE))&&t_ambar)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][20] = 1;
		if (!((( !((now.sem_princ==3))&&(((int)now.t_max)&&((int)now.t_min)))||( !((now.sem_princ==3))&&((int)now.t_ambar)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 25 - _spin_nvr.tmp:217 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][25] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 27 - _spin_nvr.tmp:218 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][27] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 32 - _spin_nvr.tmp:222 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][32] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 34 - _spin_nvr.tmp:223 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][34] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 36 - _spin_nvr.tmp:224 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][36] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 41 - _spin_nvr.tmp:228 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][41] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 43 - _spin_nvr.tmp:229 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][43] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 45 - _spin_nvr.tmp:230 - [((!((sem_princ==VERDE))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][45] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 47 - _spin_nvr.tmp:231 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][47] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 49 - _spin_nvr.tmp:232 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][49] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 51 - _spin_nvr.tmp:233 - [(((!((sem_princ==VERDE))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][51] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 56 - _spin_nvr.tmp:237 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][56] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 58 - _spin_nvr.tmp:238 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][58] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 60 - _spin_nvr.tmp:239 - [((!((sem_princ==VERDE))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][60] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 62 - _spin_nvr.tmp:240 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][62] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 67 - _spin_nvr.tmp:244 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported67 = 0;
			if (verbose && !reported67)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported67 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported67 = 0;
			if (verbose && !reported67)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported67 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][67] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 69 - _spin_nvr.tmp:245 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported69 = 0;
			if (verbose && !reported69)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported69 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported69 = 0;
			if (verbose && !reported69)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported69 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][69] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 71 - _spin_nvr.tmp:246 - [((!((sem_princ==VERDE))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][71] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 73 - _spin_nvr.tmp:247 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][73] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 75 - _spin_nvr.tmp:248 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][75] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 80 - _spin_nvr.tmp:252 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported80 = 0;
			if (verbose && !reported80)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported80 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported80 = 0;
			if (verbose && !reported80)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported80 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][80] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 82 - _spin_nvr.tmp:253 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported82 = 0;
			if (verbose && !reported82)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported82 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported82 = 0;
			if (verbose && !reported82)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported82 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][82] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 84 - _spin_nvr.tmp:254 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported84 = 0;
			if (verbose && !reported84)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported84 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported84 = 0;
			if (verbose && !reported84)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported84 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][84] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 86 - _spin_nvr.tmp:255 - [(((!((sem_princ==VERDE))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][86] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 88 - _spin_nvr.tmp:256 - [((!((sem_princ==VERDE))&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][88] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 90 - _spin_nvr.tmp:257 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][90] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 92 - _spin_nvr.tmp:258 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][92] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 94 - _spin_nvr.tmp:259 - [(((!((sem_princ==VERDE))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][94] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 99 - _spin_nvr.tmp:263 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported99 = 0;
			if (verbose && !reported99)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported99 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported99 = 0;
			if (verbose && !reported99)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported99 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][99] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 101 - _spin_nvr.tmp:264 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][101] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 103 - _spin_nvr.tmp:265 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported103 = 0;
			if (verbose && !reported103)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported103 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported103 = 0;
			if (verbose && !reported103)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported103 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][103] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 105 - _spin_nvr.tmp:266 - [(((!((sem_princ==VERDE))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported105 = 0;
			if (verbose && !reported105)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported105 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported105 = 0;
			if (verbose && !reported105)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported105 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][105] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 107 - _spin_nvr.tmp:267 - [((!((sem_princ==VERDE))&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported107 = 0;
			if (verbose && !reported107)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported107 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported107 = 0;
			if (verbose && !reported107)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported107 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][107] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 109 - _spin_nvr.tmp:268 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported109 = 0;
			if (verbose && !reported109)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported109 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported109 = 0;
			if (verbose && !reported109)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported109 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][109] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 114 - _spin_nvr.tmp:272 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported114 = 0;
			if (verbose && !reported114)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported114 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported114 = 0;
			if (verbose && !reported114)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported114 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][114] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 116 - _spin_nvr.tmp:273 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][116] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 118 - _spin_nvr.tmp:274 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported118 = 0;
			if (verbose && !reported118)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported118 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported118 = 0;
			if (verbose && !reported118)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported118 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][118] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 120 - _spin_nvr.tmp:275 - [(((!((sem_princ==VERDE))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported120 = 0;
			if (verbose && !reported120)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported120 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported120 = 0;
			if (verbose && !reported120)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported120 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][120] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 122 - _spin_nvr.tmp:276 - [((!((sem_princ==VERDE))&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported122 = 0;
			if (verbose && !reported122)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported122 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported122 = 0;
			if (verbose && !reported122)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported122 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][122] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 124 - _spin_nvr.tmp:277 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported124 = 0;
			if (verbose && !reported124)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported124 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported124 = 0;
			if (verbose && !reported124)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported124 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][124] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 126 - _spin_nvr.tmp:278 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][126] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 131 - _spin_nvr.tmp:282 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported131 = 0;
			if (verbose && !reported131)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported131 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported131 = 0;
			if (verbose && !reported131)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported131 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][131] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 133 - _spin_nvr.tmp:283 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported133 = 0;
			if (verbose && !reported133)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported133 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported133 = 0;
			if (verbose && !reported133)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported133 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][133] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 135 - _spin_nvr.tmp:284 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][135] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 137 - _spin_nvr.tmp:285 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][137] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 139 - _spin_nvr.tmp:286 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][139] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 141 - _spin_nvr.tmp:287 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][141] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 143 - _spin_nvr.tmp:288 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][143] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 145 - _spin_nvr.tmp:289 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported145 = 0;
			if (verbose && !reported145)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported145 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported145 = 0;
			if (verbose && !reported145)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported145 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][145] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 147 - _spin_nvr.tmp:290 - [(((!((sem_princ==VERDE))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported147 = 0;
			if (verbose && !reported147)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported147 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported147 = 0;
			if (verbose && !reported147)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported147 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][147] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 152 - _spin_nvr.tmp:294 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported152 = 0;
			if (verbose && !reported152)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported152 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported152 = 0;
			if (verbose && !reported152)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported152 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][152] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 154 - _spin_nvr.tmp:295 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported154 = 0;
			if (verbose && !reported154)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported154 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported154 = 0;
			if (verbose && !reported154)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported154 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][154] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 156 - _spin_nvr.tmp:296 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][156] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 158 - _spin_nvr.tmp:297 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported158 = 0;
			if (verbose && !reported158)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported158 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported158 = 0;
			if (verbose && !reported158)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported158 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][158] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 163 - _spin_nvr.tmp:301 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][163] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 165 - _spin_nvr.tmp:302 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported165 = 0;
			if (verbose && !reported165)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported165 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported165 = 0;
			if (verbose && !reported165)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported165 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][165] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 167 - _spin_nvr.tmp:303 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported167 = 0;
			if (verbose && !reported167)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported167 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported167 = 0;
			if (verbose && !reported167)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported167 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][167] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 169 - _spin_nvr.tmp:304 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported169 = 0;
			if (verbose && !reported169)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported169 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported169 = 0;
			if (verbose && !reported169)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported169 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][169] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 171 - _spin_nvr.tmp:305 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported171 = 0;
			if (verbose && !reported171)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported171 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported171 = 0;
			if (verbose && !reported171)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported171 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][171] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 173 - _spin_nvr.tmp:306 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported173 = 0;
			if (verbose && !reported173)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported173 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported173 = 0;
			if (verbose && !reported173)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported173 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][173] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 175 - _spin_nvr.tmp:307 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported175 = 0;
			if (verbose && !reported175)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported175 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported175 = 0;
			if (verbose && !reported175)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported175 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][175] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 177 - _spin_nvr.tmp:308 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported177 = 0;
			if (verbose && !reported177)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported177 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported177 = 0;
			if (verbose && !reported177)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported177 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][177] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 182 - _spin_nvr.tmp:312 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported182 = 0;
			if (verbose && !reported182)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported182 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported182 = 0;
			if (verbose && !reported182)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported182 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][182] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 184 - _spin_nvr.tmp:313 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][184] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 186 - _spin_nvr.tmp:314 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][186] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 188 - _spin_nvr.tmp:315 - [(!((sem_princ==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported188 = 0;
			if (verbose && !reported188)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported188 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported188 = 0;
			if (verbose && !reported188)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported188 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][188] = 1;
		if (!( !((now.sem_princ==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 190 - _spin_nvr.tmp:316 - [(t_ambar)] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported190 = 0;
			if (verbose && !reported190)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported190 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported190 = 0;
			if (verbose && !reported190)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported190 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][190] = 1;
		if (!(((int)now.t_ambar)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 194 - _spin_nvr.tmp:318 - [((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported194 = 0;
			if (verbose && !reported194)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported194 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported194 = 0;
			if (verbose && !reported194)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported194 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][194] = 1;
		if (!(((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 196 - _spin_nvr.tmp:319 - [(((!((sem_princ==VERDE))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported196 = 0;
			if (verbose && !reported196)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported196 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported196 = 0;
			if (verbose && !reported196)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported196 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][196] = 1;
		if (!((( !((now.sem_princ==3))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 198 - _spin_nvr.tmp:320 - [((!((sem_princ==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported198 = 0;
			if (verbose && !reported198)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported198 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported198 = 0;
			if (verbose && !reported198)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported198 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][198] = 1;
		if (!(( !((now.sem_princ==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 203 - _spin_nvr.tmp:322 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported203 = 0;
			if (verbose && !reported203)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported203 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported203 = 0;
			if (verbose && !reported203)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported203 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][203] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p6 */
	case 82: // STATE 1 - _spin_nvr.tmp:178 - [((((!(!(((sem_sec==ROJO)&&coche_sec)))&&!((sem_sec==VERDE)))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(((( !( !(((now.sem_sec==1)&&((int)now.coche_sec))))&& !((now.sem_sec==3)))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 3 - _spin_nvr.tmp:179 - [(((!(!(((sem_sec==ROJO)&&coche_sec)))&&!((sem_sec==VERDE)))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][3] = 1;
		if (!((( !( !(((now.sem_sec==1)&&((int)now.coche_sec))))&& !((now.sem_sec==3)))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 5 - _spin_nvr.tmp:180 - [((!(!(((sem_sec==ROJO)&&coche_sec)))&&!((sem_sec==VERDE))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][5] = 1;
		if (!(( !( !(((now.sem_sec==1)&&((int)now.coche_sec))))&& !((now.sem_sec==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 12 - _spin_nvr.tmp:185 - [(!((sem_sec==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][12] = 1;
		if (!( !((now.sem_sec==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 17 - _spin_nvr.tmp:189 - [((!((sem_sec==VERDE))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][17] = 1;
		if (!(( !((now.sem_sec==3))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 19 - _spin_nvr.tmp:190 - [(!((sem_sec==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][19] = 1;
		if (!( !((now.sem_sec==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 24 - _spin_nvr.tmp:194 - [(((!((sem_sec==VERDE))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][24] = 1;
		if (!((( !((now.sem_sec==3))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 26 - _spin_nvr.tmp:195 - [((!((sem_sec==VERDE))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][26] = 1;
		if (!(( !((now.sem_sec==3))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 28 - _spin_nvr.tmp:196 - [(!((sem_sec==VERDE)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][28] = 1;
		if (!( !((now.sem_sec==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 33 - _spin_nvr.tmp:198 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][33] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p5 */
	case 92: // STATE 1 - _spin_nvr.tmp:54 - [(((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!((((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 3 - _spin_nvr.tmp:55 - [((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][3] = 1;
		if (!(((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 5 - _spin_nvr.tmp:56 - [(((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][5] = 1;
		if (!((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 7 - _spin_nvr.tmp:57 - [((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][7] = 1;
		if (!(( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 9 - _spin_nvr.tmp:58 - [(t_ambar)] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][9] = 1;
		if (!(((int)now.t_ambar)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 16 - _spin_nvr.tmp:63 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][16] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 18 - _spin_nvr.tmp:64 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][18] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 20 - _spin_nvr.tmp:65 - [(((!((peat_sec==1))&&(t_max&&t_min))||(!((peat_sec==1))&&t_ambar)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][20] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&(((int)now.t_max)&&((int)now.t_min)))||( !((((int)now.peat_sec)==1))&&((int)now.t_ambar)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 25 - _spin_nvr.tmp:69 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][25] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 27 - _spin_nvr.tmp:70 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][27] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 32 - _spin_nvr.tmp:74 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][32] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 34 - _spin_nvr.tmp:75 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][34] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 36 - _spin_nvr.tmp:76 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][36] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 41 - _spin_nvr.tmp:80 - [(((!((peat_sec==1))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][41] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 43 - _spin_nvr.tmp:81 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][43] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 45 - _spin_nvr.tmp:82 - [((!((peat_sec==1))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported45 = 0;
			if (verbose && !reported45)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported45 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][45] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 47 - _spin_nvr.tmp:83 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][47] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 49 - _spin_nvr.tmp:84 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][49] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 51 - _spin_nvr.tmp:85 - [(((!((peat_sec==1))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][51] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 56 - _spin_nvr.tmp:89 - [(((!((peat_sec==1))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][56] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 58 - _spin_nvr.tmp:90 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][58] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 60 - _spin_nvr.tmp:91 - [((!((peat_sec==1))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][60] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 62 - _spin_nvr.tmp:92 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][62] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 67 - _spin_nvr.tmp:96 - [(((!((peat_sec==1))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported67 = 0;
			if (verbose && !reported67)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported67 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported67 = 0;
			if (verbose && !reported67)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported67 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][67] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 69 - _spin_nvr.tmp:97 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported69 = 0;
			if (verbose && !reported69)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported69 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported69 = 0;
			if (verbose && !reported69)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported69 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][69] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 71 - _spin_nvr.tmp:98 - [((!((peat_sec==1))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported71 = 0;
			if (verbose && !reported71)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported71 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][71] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 73 - _spin_nvr.tmp:99 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported73 = 0;
			if (verbose && !reported73)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported73 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][73] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 75 - _spin_nvr.tmp:100 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][75] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 80 - _spin_nvr.tmp:104 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported80 = 0;
			if (verbose && !reported80)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported80 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported80 = 0;
			if (verbose && !reported80)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported80 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][80] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 82 - _spin_nvr.tmp:105 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported82 = 0;
			if (verbose && !reported82)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported82 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported82 = 0;
			if (verbose && !reported82)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported82 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][82] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 84 - _spin_nvr.tmp:106 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported84 = 0;
			if (verbose && !reported84)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported84 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported84 = 0;
			if (verbose && !reported84)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported84 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][84] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 86 - _spin_nvr.tmp:107 - [(((!((peat_sec==1))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][86] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 88 - _spin_nvr.tmp:108 - [((!((peat_sec==1))&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][88] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 90 - _spin_nvr.tmp:109 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][90] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 92 - _spin_nvr.tmp:110 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][92] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 94 - _spin_nvr.tmp:111 - [(((!((peat_sec==1))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][94] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 99 - _spin_nvr.tmp:115 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported99 = 0;
			if (verbose && !reported99)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported99 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported99 = 0;
			if (verbose && !reported99)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported99 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][99] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 101 - _spin_nvr.tmp:116 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][101] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 103 - _spin_nvr.tmp:117 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported103 = 0;
			if (verbose && !reported103)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported103 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported103 = 0;
			if (verbose && !reported103)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported103 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][103] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 105 - _spin_nvr.tmp:118 - [(((!((peat_sec==1))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported105 = 0;
			if (verbose && !reported105)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported105 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported105 = 0;
			if (verbose && !reported105)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported105 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][105] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 107 - _spin_nvr.tmp:119 - [((!((peat_sec==1))&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported107 = 0;
			if (verbose && !reported107)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported107 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported107 = 0;
			if (verbose && !reported107)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported107 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][107] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 109 - _spin_nvr.tmp:120 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported109 = 0;
			if (verbose && !reported109)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported109 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported109 = 0;
			if (verbose && !reported109)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported109 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][109] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 114 - _spin_nvr.tmp:124 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported114 = 0;
			if (verbose && !reported114)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported114 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported114 = 0;
			if (verbose && !reported114)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported114 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][114] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 116 - _spin_nvr.tmp:125 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][116] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 118 - _spin_nvr.tmp:126 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported118 = 0;
			if (verbose && !reported118)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported118 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported118 = 0;
			if (verbose && !reported118)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported118 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][118] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 120 - _spin_nvr.tmp:127 - [(((!((peat_sec==1))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported120 = 0;
			if (verbose && !reported120)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported120 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported120 = 0;
			if (verbose && !reported120)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported120 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][120] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 122 - _spin_nvr.tmp:128 - [((!((peat_sec==1))&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported122 = 0;
			if (verbose && !reported122)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported122 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported122 = 0;
			if (verbose && !reported122)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported122 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][122] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 124 - _spin_nvr.tmp:129 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported124 = 0;
			if (verbose && !reported124)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported124 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported124 = 0;
			if (verbose && !reported124)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported124 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][124] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 126 - _spin_nvr.tmp:130 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][126] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 131 - _spin_nvr.tmp:134 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported131 = 0;
			if (verbose && !reported131)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported131 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported131 = 0;
			if (verbose && !reported131)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported131 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][131] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 133 - _spin_nvr.tmp:135 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported133 = 0;
			if (verbose && !reported133)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported133 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported133 = 0;
			if (verbose && !reported133)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported133 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][133] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 135 - _spin_nvr.tmp:136 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][135] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 137 - _spin_nvr.tmp:137 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][137] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 139 - _spin_nvr.tmp:138 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][139] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 141 - _spin_nvr.tmp:139 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported141 = 0;
			if (verbose && !reported141)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported141 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][141] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 143 - _spin_nvr.tmp:140 - [(((!((peat_sec==1))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][143] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 145 - _spin_nvr.tmp:141 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported145 = 0;
			if (verbose && !reported145)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported145 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported145 = 0;
			if (verbose && !reported145)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported145 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][145] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 147 - _spin_nvr.tmp:142 - [(((!((peat_sec==1))&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported147 = 0;
			if (verbose && !reported147)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported147 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported147 = 0;
			if (verbose && !reported147)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported147 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][147] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 152 - _spin_nvr.tmp:146 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported152 = 0;
			if (verbose && !reported152)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported152 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported152 = 0;
			if (verbose && !reported152)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported152 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][152] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 154 - _spin_nvr.tmp:147 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported154 = 0;
			if (verbose && !reported154)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported154 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported154 = 0;
			if (verbose && !reported154)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported154 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][154] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 156 - _spin_nvr.tmp:148 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][156] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 158 - _spin_nvr.tmp:149 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported158 = 0;
			if (verbose && !reported158)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported158 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported158 = 0;
			if (verbose && !reported158)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported158 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][158] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 163 - _spin_nvr.tmp:153 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported163 = 0;
			if (verbose && !reported163)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported163 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][163] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 165 - _spin_nvr.tmp:154 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported165 = 0;
			if (verbose && !reported165)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported165 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported165 = 0;
			if (verbose && !reported165)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported165 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][165] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 167 - _spin_nvr.tmp:155 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported167 = 0;
			if (verbose && !reported167)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported167 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported167 = 0;
			if (verbose && !reported167)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported167 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][167] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 169 - _spin_nvr.tmp:156 - [((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported169 = 0;
			if (verbose && !reported169)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported169 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported169 = 0;
			if (verbose && !reported169)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported169 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][169] = 1;
		if (!(((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 171 - _spin_nvr.tmp:157 - [(((!((peat_sec==1))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported171 = 0;
			if (verbose && !reported171)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported171 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported171 = 0;
			if (verbose && !reported171)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported171 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][171] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 173 - _spin_nvr.tmp:158 - [(((!((peat_sec==1))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported173 = 0;
			if (verbose && !reported173)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported173 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported173 = 0;
			if (verbose && !reported173)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported173 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][173] = 1;
		if (!((( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 175 - _spin_nvr.tmp:159 - [((!((peat_sec==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported175 = 0;
			if (verbose && !reported175)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported175 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported175 = 0;
			if (verbose && !reported175)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported175 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][175] = 1;
		if (!(( !((((int)now.peat_sec)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 177 - _spin_nvr.tmp:160 - [(!((peat_sec==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported177 = 0;
			if (verbose && !reported177)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported177 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported177 = 0;
			if (verbose && !reported177)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported177 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][177] = 1;
		if (!( !((((int)now.peat_sec)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 182 - _spin_nvr.tmp:164 - [(((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported182 = 0;
			if (verbose && !reported182)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported182 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported182 = 0;
			if (verbose && !reported182)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported182 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][182] = 1;
		if (!((((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 184 - _spin_nvr.tmp:165 - [((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported184 = 0;
			if (verbose && !reported184)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported184 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][184] = 1;
		if (!(((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 186 - _spin_nvr.tmp:166 - [(((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported186 = 0;
			if (verbose && !reported186)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported186 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][186] = 1;
		if (!((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 188 - _spin_nvr.tmp:167 - [((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported188 = 0;
			if (verbose && !reported188)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported188 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported188 = 0;
			if (verbose && !reported188)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported188 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][188] = 1;
		if (!(( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 190 - _spin_nvr.tmp:168 - [(t_ambar)] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported190 = 0;
			if (verbose && !reported190)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported190 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported190 = 0;
			if (verbose && !reported190)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported190 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][190] = 1;
		if (!(((int)now.t_ambar)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 194 - _spin_nvr.tmp:170 - [(((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported194 = 0;
			if (verbose && !reported194)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported194 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported194 = 0;
			if (verbose && !reported194)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported194 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][194] = 1;
		if (!((((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))&&((int)now.t_max))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 196 - _spin_nvr.tmp:171 - [((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported196 = 0;
			if (verbose && !reported196)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported196 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported196 = 0;
			if (verbose && !reported196)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported196 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][196] = 1;
		if (!(((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))&&((int)now.t_max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 198 - _spin_nvr.tmp:172 - [(((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported198 = 0;
			if (verbose && !reported198)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported198 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported198 = 0;
			if (verbose && !reported198)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported198 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][198] = 1;
		if (!((( !( !(((((int)now.peat_sec)==0)&&((int)now.btn_p_sec))))&& !((((int)now.peat_sec)==1)))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 203 - _spin_nvr.tmp:174 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported203 = 0;
			if (verbose && !reported203)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported203 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported203 = 0;
			if (verbose && !reported203)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported203 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][203] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p4 */
	case 171: // STATE 1 - _spin_nvr.tmp:30 - [((((!(!(((peat_princ==0)&&btn_p_princ)))&&!((peat_princ==1)))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(((( !( !(((((int)now.peat_princ)==0)&&((int)now.btn_p_princ))))&& !((((int)now.peat_princ)==1)))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 3 - _spin_nvr.tmp:31 - [(((!(!(((peat_princ==0)&&btn_p_princ)))&&!((peat_princ==1)))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!((( !( !(((((int)now.peat_princ)==0)&&((int)now.btn_p_princ))))&& !((((int)now.peat_princ)==1)))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 5 - _spin_nvr.tmp:32 - [((!(!(((peat_princ==0)&&btn_p_princ)))&&!((peat_princ==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][5] = 1;
		if (!(( !( !(((((int)now.peat_princ)==0)&&((int)now.btn_p_princ))))&& !((((int)now.peat_princ)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 12 - _spin_nvr.tmp:37 - [(!((peat_princ==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][12] = 1;
		if (!( !((((int)now.peat_princ)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 17 - _spin_nvr.tmp:41 - [((!((peat_princ==1))&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][17] = 1;
		if (!(( !((((int)now.peat_princ)==1))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 19 - _spin_nvr.tmp:42 - [(!((peat_princ==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][19] = 1;
		if (!( !((((int)now.peat_princ)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 24 - _spin_nvr.tmp:46 - [(((!((peat_princ==1))&&t_ambar)&&t_min))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][24] = 1;
		if (!((( !((((int)now.peat_princ)==1))&&((int)now.t_ambar))&&((int)now.t_min))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 26 - _spin_nvr.tmp:47 - [((!((peat_princ==1))&&t_ambar))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][26] = 1;
		if (!(( !((((int)now.peat_princ)==1))&&((int)now.t_ambar))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 28 - _spin_nvr.tmp:48 - [(!((peat_princ==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][28] = 1;
		if (!( !((((int)now.peat_princ)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 33 - _spin_nvr.tmp:50 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][33] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p3 */
	case 181: // STATE 1 - _spin_nvr.tmp:21 - [(!(!(((sem_sec==VERDE)&&(peat_sec==1)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !( !(((now.sem_sec==3)&&(((int)now.peat_sec)==1))))))
			continue;
		/* merge: assert(!(!(!(((sem_sec==VERDE)&&(peat_sec==1))))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !( !(((now.sem_sec==3)&&(((int)now.peat_sec)==1))))), " !( !( !(((sem_sec==3)&&(peat_sec==1)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 182: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2 */
	case 183: // STATE 1 - _spin_nvr.tmp:12 - [(!(!(((sem_princ==VERDE)&&(peat_princ==1)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !( !(((now.sem_princ==3)&&(((int)now.peat_princ)==1))))))
			continue;
		/* merge: assert(!(!(!(((sem_princ==VERDE)&&(peat_princ==1))))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !( !(((now.sem_princ==3)&&(((int)now.peat_princ)==1))))), " !( !( !(((sem_princ==3)&&(peat_princ==1)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 184: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p1 */
	case 185: // STATE 1 - _spin_nvr.tmp:3 - [(!(!(((sem_princ==VERDE)&&(sem_sec==VERDE)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !( !(((now.sem_princ==3)&&(now.sem_sec==3))))))
			continue;
		/* merge: assert(!(!(!(((sem_princ==VERDE)&&(sem_sec==VERDE))))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !(((now.sem_princ==3)&&(now.sem_sec==3))))), " !( !( !(((sem_princ==3)&&(sem_sec==3)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 186: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 187: // STATE 1 - model.pml:126 - [coche_sec = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.coche_sec);
		now.coche_sec = 1;
#ifdef VAR_RANGES
		logval("coche_sec", ((int)now.coche_sec));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 2 - model.pml:126 - [printf('  coche_sec = 1\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("  coche_sec = 1\n");
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 3 - model.pml:127 - [btn_p_princ = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.btn_p_princ);
		now.btn_p_princ = 1;
#ifdef VAR_RANGES
		logval("btn_p_princ", ((int)now.btn_p_princ));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 4 - model.pml:127 - [printf('  btn_p_princ = 1\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("  btn_p_princ = 1\n");
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 5 - model.pml:128 - [btn_p_sec = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.btn_p_sec);
		now.btn_p_sec = 1;
#ifdef VAR_RANGES
		logval("btn_p_sec", ((int)now.btn_p_sec));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 6 - model.pml:128 - [printf('  btn_p_sec = 1\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("  btn_p_sec = 1\n");
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 7 - model.pml:129 - [t_min = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.t_min);
		now.t_min = 1;
#ifdef VAR_RANGES
		logval("t_min", ((int)now.t_min));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 8 - model.pml:129 - [printf('  t_min = 1\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("  t_min = 1\n");
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 9 - model.pml:130 - [t_max = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.t_max);
		now.t_max = 1;
#ifdef VAR_RANGES
		logval("t_max", ((int)now.t_max));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 10 - model.pml:130 - [printf('  t_max = 1\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		Printf("  t_max = 1\n");
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 11 - model.pml:131 - [t_ambar = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.t_ambar);
		now.t_ambar = 1;
#ifdef VAR_RANGES
		logval("t_ambar", ((int)now.t_ambar));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 12 - model.pml:131 - [printf('  t_ambar = 1\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("  t_ambar = 1\n");
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 18 - model.pml:134 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm */
	case 200: // STATE 1 - model.pml:71 - [((fsm_estado==S0_PRINC_VERDE))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.fsm_estado==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 2 - model.pml:73 - [(((coche_sec||btn_p_princ)&&t_min))] (54:0:7 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((((int)now.coche_sec)||((int)now.btn_p_princ))&&((int)now.t_min))))
			continue;
		/* merge: sem_princ = AMBAR(54, 3, 54) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.sem_princ;
		now.sem_princ = 2;
#ifdef VAR_RANGES
		logval("sem_princ", now.sem_princ);
#endif
		;
		/* merge: peat_sec = 0(54, 4, 54) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.peat_sec);
		now.peat_sec = 0;
#ifdef VAR_RANGES
		logval("peat_sec", ((int)now.peat_sec));
#endif
		;
		/* merge: t_min = 0(54, 5, 54) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.t_min);
		now.t_min = 0;
#ifdef VAR_RANGES
		logval("t_min", ((int)now.t_min));
#endif
		;
		/* merge: t_max = 0(54, 6, 54) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.t_max);
		now.t_max = 0;
#ifdef VAR_RANGES
		logval("t_max", ((int)now.t_max));
#endif
		;
		/* merge: t_ambar = 0(54, 7, 54) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.t_ambar);
		now.t_ambar = 0;
#ifdef VAR_RANGES
		logval("t_ambar", ((int)now.t_ambar));
#endif
		;
		/* merge: btn_p_princ = 0(54, 8, 54) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.btn_p_princ);
		now.btn_p_princ = 0;
#ifdef VAR_RANGES
		logval("btn_p_princ", ((int)now.btn_p_princ));
#endif
		;
		/* merge: fsm_estado = S1_PRINC_AMBAR(54, 9, 54) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[6] = now.fsm_estado;
		now.fsm_estado = 6;
#ifdef VAR_RANGES
		logval("fsm_estado", now.fsm_estado);
#endif
		;
		/* merge: printf('estado = %e, sem_princ = %e, peat_sec = %d\\n',fsm_estado,sem_princ,peat_sec)(54, 10, 54) */
		reached[0][10] = 1;
		Printf("estado = %e, sem_princ = %e, peat_sec = %d\n", now.fsm_estado, now.sem_princ, ((int)now.peat_sec));
		/* merge: .(goto)(54, 12, 54) */
		reached[0][12] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 202: // STATE 14 - model.pml:82 - [((fsm_estado==S1_PRINC_AMBAR))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((now.fsm_estado==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 15 - model.pml:84 - [(t_ambar)] (54:0:7 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((int)now.t_ambar)))
			continue;
		/* merge: sem_princ = ROJO(54, 16, 54) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.sem_princ;
		now.sem_princ = 1;
#ifdef VAR_RANGES
		logval("sem_princ", now.sem_princ);
#endif
		;
		/* merge: sem_sec = VERDE(54, 17, 54) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[1] = now.sem_sec;
		now.sem_sec = 3;
#ifdef VAR_RANGES
		logval("sem_sec", now.sem_sec);
#endif
		;
		/* merge: peat_princ = 1(54, 18, 54) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.peat_princ);
		now.peat_princ = 1;
#ifdef VAR_RANGES
		logval("peat_princ", ((int)now.peat_princ));
#endif
		;
		/* merge: t_min = 0(54, 19, 54) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.t_min);
		now.t_min = 0;
#ifdef VAR_RANGES
		logval("t_min", ((int)now.t_min));
#endif
		;
		/* merge: t_max = 0(54, 20, 54) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.t_max);
		now.t_max = 0;
#ifdef VAR_RANGES
		logval("t_max", ((int)now.t_max));
#endif
		;
		/* merge: t_ambar = 0(54, 21, 54) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.t_ambar);
		now.t_ambar = 0;
#ifdef VAR_RANGES
		logval("t_ambar", ((int)now.t_ambar));
#endif
		;
		/* merge: fsm_estado = S2_SEC_VERDE(54, 22, 54) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[6] = now.fsm_estado;
		now.fsm_estado = 5;
#ifdef VAR_RANGES
		logval("fsm_estado", now.fsm_estado);
#endif
		;
		/* merge: printf('estado = %e, sem_sec = %e, peat_princ = %d\\n',fsm_estado,sem_sec,peat_princ)(54, 23, 54) */
		reached[0][23] = 1;
		Printf("estado = %e, sem_sec = %e, peat_princ = %d\n", now.fsm_estado, now.sem_sec, ((int)now.peat_princ));
		/* merge: .(goto)(54, 25, 54) */
		reached[0][25] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 204: // STATE 27 - model.pml:94 - [((fsm_estado==S2_SEC_VERDE))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((now.fsm_estado==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 28 - model.pml:96 - [((((!(coche_sec)||btn_p_sec)||t_max)&&t_min))] (54:0:7 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(((( !(((int)now.coche_sec))||((int)now.btn_p_sec))||((int)now.t_max))&&((int)now.t_min))))
			continue;
		/* merge: sem_sec = AMBAR(54, 29, 54) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = now.sem_sec;
		now.sem_sec = 2;
#ifdef VAR_RANGES
		logval("sem_sec", now.sem_sec);
#endif
		;
		/* merge: peat_princ = 0(54, 30, 54) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.peat_princ);
		now.peat_princ = 0;
#ifdef VAR_RANGES
		logval("peat_princ", ((int)now.peat_princ));
#endif
		;
		/* merge: t_min = 0(54, 31, 54) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.t_min);
		now.t_min = 0;
#ifdef VAR_RANGES
		logval("t_min", ((int)now.t_min));
#endif
		;
		/* merge: t_max = 0(54, 32, 54) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.t_max);
		now.t_max = 0;
#ifdef VAR_RANGES
		logval("t_max", ((int)now.t_max));
#endif
		;
		/* merge: t_ambar = 0(54, 33, 54) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.t_ambar);
		now.t_ambar = 0;
#ifdef VAR_RANGES
		logval("t_ambar", ((int)now.t_ambar));
#endif
		;
		/* merge: btn_p_sec = 0(54, 34, 54) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.btn_p_sec);
		now.btn_p_sec = 0;
#ifdef VAR_RANGES
		logval("btn_p_sec", ((int)now.btn_p_sec));
#endif
		;
		/* merge: fsm_estado = S3_SEC_AMBAR(54, 35, 54) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[6] = now.fsm_estado;
		now.fsm_estado = 4;
#ifdef VAR_RANGES
		logval("fsm_estado", now.fsm_estado);
#endif
		;
		/* merge: printf('estado = %e, sem_sec = %e, peat_princ = %d\\n',fsm_estado,sem_sec,peat_princ)(54, 36, 54) */
		reached[0][36] = 1;
		Printf("estado = %e, sem_sec = %e, peat_princ = %d\n", now.fsm_estado, now.sem_sec, ((int)now.peat_princ));
		/* merge: .(goto)(54, 38, 54) */
		reached[0][38] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 206: // STATE 40 - model.pml:105 - [((fsm_estado==S3_SEC_AMBAR))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!((now.fsm_estado==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 41 - model.pml:107 - [(t_ambar)] (54:0:8 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!(((int)now.t_ambar)))
			continue;
		/* merge: sem_sec = ROJO(54, 42, 54) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = now.sem_sec;
		now.sem_sec = 1;
#ifdef VAR_RANGES
		logval("sem_sec", now.sem_sec);
#endif
		;
		/* merge: sem_princ = VERDE(54, 43, 54) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[1] = now.sem_princ;
		now.sem_princ = 3;
#ifdef VAR_RANGES
		logval("sem_princ", now.sem_princ);
#endif
		;
		/* merge: peat_sec = 1(54, 44, 54) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.peat_sec);
		now.peat_sec = 1;
#ifdef VAR_RANGES
		logval("peat_sec", ((int)now.peat_sec));
#endif
		;
		/* merge: t_min = 0(54, 45, 54) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.t_min);
		now.t_min = 0;
#ifdef VAR_RANGES
		logval("t_min", ((int)now.t_min));
#endif
		;
		/* merge: t_max = 0(54, 46, 54) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.t_max);
		now.t_max = 0;
#ifdef VAR_RANGES
		logval("t_max", ((int)now.t_max));
#endif
		;
		/* merge: t_ambar = 0(54, 47, 54) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.t_ambar);
		now.t_ambar = 0;
#ifdef VAR_RANGES
		logval("t_ambar", ((int)now.t_ambar));
#endif
		;
		/* merge: coche_sec = 0(54, 48, 54) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.coche_sec);
		now.coche_sec = 0;
#ifdef VAR_RANGES
		logval("coche_sec", ((int)now.coche_sec));
#endif
		;
		/* merge: fsm_estado = S0_PRINC_VERDE(54, 49, 54) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[7] = now.fsm_estado;
		now.fsm_estado = 7;
#ifdef VAR_RANGES
		logval("fsm_estado", now.fsm_estado);
#endif
		;
		/* merge: printf('estado = %e, sem_princ = %e, peat_sec = %d\\n',fsm_estado,sem_princ,peat_sec)(54, 50, 54) */
		reached[0][50] = 1;
		Printf("estado = %e, sem_princ = %e, peat_sec = %d\n", now.fsm_estado, now.sem_princ, ((int)now.peat_sec));
		/* merge: .(goto)(54, 52, 54) */
		reached[0][52] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 11 */
	case 208: // STATE 57 - model.pml:118 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

