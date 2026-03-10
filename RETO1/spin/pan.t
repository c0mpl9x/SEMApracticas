#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(10*sizeof(Trans **));

	/* proctype 8: p7 */

	trans[8] = (Trans **) emalloc(204*sizeof(Trans *));

	trans[8][14]	= settr(387,0,13,1,0,".(goto)", 0, 2, 0);
	T = trans[8][13] = settr(386,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(386,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(386,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(386,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(386,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(386,0,9,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(386,0,11,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(374,0,29,3,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][2]	= settr(375,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][3]	= settr(376,0,64,4,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][4]	= settr(377,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][5]	= settr(378,0,111,5,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][6]	= settr(379,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][7]	= settr(380,0,179,6,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][8]	= settr(381,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][9]	= settr(382,0,13,7,0,"(t_ambar)", 1, 2, 0);
	trans[8][10]	= settr(383,0,13,1,0,"goto T0_init", 0, 2, 0);
	trans[8][11]	= settr(384,0,200,1,0,"(1)", 0, 2, 0);
	trans[8][12]	= settr(385,0,200,1,0,"goto T0_S5049", 0, 2, 0);
	trans[8][15]	= settr(388,0,22,1,0,"break", 0, 2, 0);
	trans[8][23]	= settr(396,0,22,1,0,".(goto)", 0, 2, 0);
	T = trans[8][22] = settr(395,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(395,0,16,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(395,0,18,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(395,0,20,0,0,"DO", 0, 2, 0);
	trans[8][16]	= settr(389,0,160,8,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][17]	= settr(390,0,160,1,0,"goto T0_S2550", 0, 2, 0);
	trans[8][18]	= settr(391,0,179,9,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][19]	= settr(392,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][20]	= settr(393,0,149,10,0,"(((!((sem_princ==VERDE))&&(t_max&&t_min))||(!((sem_princ==VERDE))&&t_ambar)))", 1, 2, 0);
	trans[8][21]	= settr(394,0,149,1,0,"goto T0_S385", 0, 2, 0);
	trans[8][24]	= settr(397,0,29,1,0,"break", 0, 2, 0);
	trans[8][30]	= settr(403,0,29,1,0,".(goto)", 0, 2, 0);
	T = trans[8][29] = settr(402,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(402,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(402,0,27,0,0,"DO", 0, 2, 0);
	trans[8][25]	= settr(398,0,160,11,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][26]	= settr(399,0,160,1,0,"goto T0_S2550", 0, 2, 0);
	trans[8][27]	= settr(400,0,179,12,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][28]	= settr(401,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][31]	= settr(404,0,38,1,0,"break", 0, 2, 0);
	trans[8][39]	= settr(412,0,38,1,0,".(goto)", 0, 2, 0);
	T = trans[8][38] = settr(411,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(411,0,32,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(411,0,34,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(411,0,36,0,0,"DO", 0, 2, 0);
	trans[8][32]	= settr(405,0,160,13,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][33]	= settr(406,0,160,1,0,"goto T0_S2550", 0, 2, 0);
	trans[8][34]	= settr(407,0,179,14,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][35]	= settr(408,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][36]	= settr(409,0,149,15,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][37]	= settr(410,0,149,1,0,"goto T0_S385", 0, 2, 0);
	trans[8][40]	= settr(413,0,53,1,0,"break", 0, 2, 0);
	trans[8][54]	= settr(427,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[8][53] = settr(426,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(426,0,41,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(426,0,43,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(426,0,45,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(426,0,47,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(426,0,49,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(426,0,51,0,0,"DO", 0, 2, 0);
	trans[8][41]	= settr(414,0,29,16,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[8][42]	= settr(415,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][43]	= settr(416,0,64,17,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][44]	= settr(417,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][45]	= settr(418,0,38,18,0,"((!((sem_princ==VERDE))&&t_min))", 1, 2, 0);
	trans[8][46]	= settr(419,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][47]	= settr(420,0,77,19,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][48]	= settr(421,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][49]	= settr(422,0,53,20,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][50]	= settr(423,0,53,1,0,"goto T3_S385", 0, 2, 0);
	trans[8][51]	= settr(424,0,22,21,0,"(((!((sem_princ==VERDE))&&t_max)&&t_min))", 1, 2, 0);
	trans[8][52]	= settr(425,0,22,1,0,"goto accept_S385", 0, 2, 0);
	trans[8][55]	= settr(428,0,64,1,0,"break", 0, 2, 0);
	trans[8][65]	= settr(438,0,64,1,0,".(goto)", 0, 2, 0);
	T = trans[8][64] = settr(437,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(437,0,56,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(437,0,58,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(437,0,60,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(437,0,62,0,0,"DO", 0, 2, 0);
	trans[8][56]	= settr(429,0,29,22,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[8][57]	= settr(430,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][58]	= settr(431,0,64,23,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][59]	= settr(432,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][60]	= settr(433,0,38,24,0,"((!((sem_princ==VERDE))&&t_min))", 1, 2, 0);
	trans[8][61]	= settr(434,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][62]	= settr(435,0,77,25,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][63]	= settr(436,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][66]	= settr(439,0,77,1,0,"break", 0, 2, 0);
	trans[8][78]	= settr(451,0,77,1,0,".(goto)", 0, 2, 0);
	T = trans[8][77] = settr(450,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(450,0,67,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(450,0,69,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(450,0,71,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(450,0,73,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(450,0,75,0,0,"DO", 0, 2, 0);
	trans[8][67]	= settr(440,0,29,26,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[8][68]	= settr(441,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][69]	= settr(442,0,64,27,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][70]	= settr(443,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][71]	= settr(444,0,38,28,0,"((!((sem_princ==VERDE))&&t_min))", 1, 2, 0);
	trans[8][72]	= settr(445,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][73]	= settr(446,0,77,29,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][74]	= settr(447,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][75]	= settr(448,0,53,30,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][76]	= settr(449,0,53,1,0,"goto T3_S385", 0, 2, 0);
	trans[8][79]	= settr(452,0,96,1,0,"break", 0, 2, 0);
	trans[8][97]	= settr(470,0,96,1,0,".(goto)", 0, 2, 0);
	T = trans[8][96] = settr(469,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,80,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,82,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,84,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,88,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,92,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(469,0,94,0,0,"DO", 0, 2, 0);
	trans[8][80]	= settr(453,0,29,31,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][81]	= settr(454,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][82]	= settr(455,0,64,32,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][83]	= settr(456,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][84]	= settr(457,0,111,33,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][85]	= settr(458,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][86]	= settr(459,0,38,34,0,"(((!((sem_princ==VERDE))&&t_max)&&t_min))", 1, 2, 0);
	trans[8][87]	= settr(460,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][88]	= settr(461,0,77,35,0,"((!((sem_princ==VERDE))&&t_max))", 1, 2, 0);
	trans[8][89]	= settr(462,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][90]	= settr(463,0,128,36,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][91]	= settr(464,0,128,1,0,"goto T2_S3797", 0, 2, 0);
	trans[8][92]	= settr(465,0,96,37,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][93]	= settr(466,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[8][94]	= settr(467,0,22,38,0,"(((!((sem_princ==VERDE))&&t_max)&&t_min))", 1, 2, 0);
	trans[8][95]	= settr(468,0,22,1,0,"goto accept_S385", 0, 2, 0);
	trans[8][98]	= settr(471,0,111,1,0,"break", 0, 2, 0);
	trans[8][112]	= settr(485,0,111,1,0,".(goto)", 0, 2, 0);
	T = trans[8][111] = settr(484,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(484,0,99,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(484,0,101,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(484,0,103,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(484,0,105,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(484,0,107,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(484,0,109,0,0,"DO", 0, 2, 0);
	trans[8][99]	= settr(472,0,29,39,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][100]	= settr(473,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][101]	= settr(474,0,64,40,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][102]	= settr(475,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][103]	= settr(476,0,111,41,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][104]	= settr(477,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][105]	= settr(478,0,38,42,0,"(((!((sem_princ==VERDE))&&t_max)&&t_min))", 1, 2, 0);
	trans[8][106]	= settr(479,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][107]	= settr(480,0,77,43,0,"((!((sem_princ==VERDE))&&t_max))", 1, 2, 0);
	trans[8][108]	= settr(481,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][109]	= settr(482,0,128,44,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][110]	= settr(483,0,128,1,0,"goto T2_S3797", 0, 2, 0);
	trans[8][113]	= settr(486,0,128,1,0,"break", 0, 2, 0);
	trans[8][129]	= settr(502,0,128,1,0,".(goto)", 0, 2, 0);
	T = trans[8][128] = settr(501,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,114,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,116,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,118,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,120,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,122,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,124,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(501,0,126,0,0,"DO", 0, 2, 0);
	trans[8][114]	= settr(487,0,29,45,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][115]	= settr(488,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][116]	= settr(489,0,64,46,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][117]	= settr(490,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][118]	= settr(491,0,111,47,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][119]	= settr(492,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][120]	= settr(493,0,38,48,0,"(((!((sem_princ==VERDE))&&t_max)&&t_min))", 1, 2, 0);
	trans[8][121]	= settr(494,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][122]	= settr(495,0,77,49,0,"((!((sem_princ==VERDE))&&t_max))", 1, 2, 0);
	trans[8][123]	= settr(496,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][124]	= settr(497,0,128,50,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][125]	= settr(498,0,128,1,0,"goto T2_S3797", 0, 2, 0);
	trans[8][126]	= settr(499,0,96,51,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][127]	= settr(500,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[8][130]	= settr(503,0,149,1,0,"break", 0, 2, 0);
	trans[8][150]	= settr(523,0,149,1,0,".(goto)", 0, 2, 0);
	T = trans[8][149] = settr(522,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,131,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,133,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,135,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,137,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,139,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,141,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,143,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(522,0,145,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(522,0,147,0,0,"DO", 0, 2, 0);
	trans[8][131]	= settr(504,0,29,52,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][132]	= settr(505,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][133]	= settr(506,0,64,53,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][134]	= settr(507,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][135]	= settr(508,0,111,54,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][136]	= settr(509,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][137]	= settr(510,0,179,55,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][138]	= settr(511,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][139]	= settr(512,0,38,56,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][140]	= settr(513,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][141]	= settr(514,0,77,57,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][142]	= settr(515,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][143]	= settr(516,0,128,58,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[8][144]	= settr(517,0,128,1,0,"goto T2_S3797", 0, 2, 0);
	trans[8][145]	= settr(518,0,96,59,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][146]	= settr(519,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[8][147]	= settr(520,0,149,60,0,"(((!((sem_princ==VERDE))&&t_max)&&t_min))", 1, 2, 0);
	trans[8][148]	= settr(521,0,149,1,0,"goto T0_S385", 0, 2, 0);
	trans[8][151]	= settr(524,0,160,1,0,"break", 0, 2, 0);
	trans[8][161]	= settr(534,0,160,1,0,".(goto)", 0, 2, 0);
	T = trans[8][160] = settr(533,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(533,0,152,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(533,0,154,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(533,0,156,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(533,0,158,0,0,"DO", 0, 2, 0);
	trans[8][152]	= settr(525,0,29,61,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][153]	= settr(526,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][154]	= settr(527,0,64,62,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][155]	= settr(528,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][156]	= settr(529,0,111,63,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][157]	= settr(530,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][158]	= settr(531,0,179,64,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][159]	= settr(532,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][162]	= settr(535,0,179,1,0,"break", 0, 2, 0);
	trans[8][180]	= settr(553,0,179,1,0,".(goto)", 0, 2, 0);
	T = trans[8][179] = settr(552,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,163,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,165,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,167,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,169,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,171,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,173,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(552,0,175,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(552,0,177,0,0,"DO", 0, 2, 0);
	trans[8][163]	= settr(536,0,29,65,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][164]	= settr(537,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][165]	= settr(538,0,64,66,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][166]	= settr(539,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][167]	= settr(540,0,111,67,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][168]	= settr(541,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][169]	= settr(542,0,38,68,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][170]	= settr(543,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][171]	= settr(544,0,77,69,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][172]	= settr(545,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][173]	= settr(546,0,128,70,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[8][174]	= settr(547,0,128,1,0,"goto T2_S3797", 0, 2, 0);
	trans[8][175]	= settr(548,0,96,71,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][176]	= settr(549,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[8][177]	= settr(550,0,179,72,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][178]	= settr(551,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][181]	= settr(554,0,200,1,0,"break", 0, 2, 0);
	trans[8][201]	= settr(574,0,200,1,0,".(goto)", 0, 2, 0);
	T = trans[8][200] = settr(573,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,182,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,184,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,186,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,188,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,190,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,192,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,194,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(573,0,196,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(573,0,198,0,0,"DO", 0, 2, 0);
	trans[8][182]	= settr(555,0,29,73,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][183]	= settr(556,0,29,1,0,"goto accept_S2550", 0, 2, 0);
	trans[8][184]	= settr(557,0,64,74,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][185]	= settr(558,0,64,1,0,"goto T3_S2550", 0, 2, 0);
	trans[8][186]	= settr(559,0,111,75,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][187]	= settr(560,0,111,1,0,"goto T2_S2550", 0, 2, 0);
	trans[8][188]	= settr(561,0,179,76,0,"(!((sem_princ==VERDE)))", 1, 2, 0);
	trans[8][189]	= settr(562,0,179,1,0,"goto T0_S3797", 0, 2, 0);
	trans[8][190]	= settr(563,0,13,77,0,"(t_ambar)", 1, 2, 0);
	trans[8][191]	= settr(564,0,13,1,0,"goto T0_init", 0, 2, 0);
	trans[8][192]	= settr(565,0,200,1,0,"(1)", 0, 2, 0);
	trans[8][193]	= settr(566,0,200,1,0,"goto T0_S5049", 0, 2, 0);
	trans[8][194]	= settr(567,0,38,78,0,"((((!((sem_princ==VERDE))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[8][195]	= settr(568,0,38,1,0,"goto accept_S3797", 0, 2, 0);
	trans[8][196]	= settr(569,0,77,79,0,"(((!((sem_princ==VERDE))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[8][197]	= settr(570,0,77,1,0,"goto T3_S3797", 0, 2, 0);
	trans[8][198]	= settr(571,0,128,80,0,"((!((sem_princ==VERDE))&&t_ambar))", 1, 2, 0);
	trans[8][199]	= settr(572,0,128,1,0,"goto T2_S3797", 0, 2, 0);
	trans[8][202]	= settr(575,0,203,1,0,"break", 0, 2, 0);
	trans[8][203]	= settr(576,0,0,81,81,"-end-", 0, 3500, 0);

	/* proctype 7: p6 */

	trans[7] = (Trans **) emalloc(34*sizeof(Trans *));

	trans[7][10]	= settr(350,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[7][9] = settr(349,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(349,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(349,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(349,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(349,0,7,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(341,0,14,82,0,"((((!(!(((sem_sec==ROJO)&&coche_sec)))&&!((sem_sec==VERDE)))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[7][2]	= settr(342,0,14,1,0,"goto accept_S481", 0, 2, 0);
	trans[7][3]	= settr(343,0,21,83,0,"(((!(!(((sem_sec==ROJO)&&coche_sec)))&&!((sem_sec==VERDE)))&&t_ambar))", 1, 2, 0);
	trans[7][4]	= settr(344,0,21,1,0,"goto T2_S481", 0, 2, 0);
	trans[7][5]	= settr(345,0,30,84,0,"((!(!(((sem_sec==ROJO)&&coche_sec)))&&!((sem_sec==VERDE))))", 1, 2, 0);
	trans[7][6]	= settr(346,0,30,1,0,"goto T0_S481", 0, 2, 0);
	trans[7][7]	= settr(347,0,9,1,0,"(1)", 0, 2, 0);
	trans[7][8]	= settr(348,0,9,1,0,"goto T0_init", 0, 2, 0);
	trans[7][11]	= settr(351,0,14,1,0,"break", 0, 2, 0);
	trans[7][15]	= settr(355,0,14,1,0,".(goto)", 0, 2, 0);
	T = trans[7][14] = settr(354,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(354,0,12,0,0,"DO", 0, 2, 0);
	trans[7][12]	= settr(352,0,30,85,0,"(!((sem_sec==VERDE)))", 1, 2, 0);
	trans[7][13]	= settr(353,0,30,1,0,"goto T0_S481", 0, 2, 0);
	trans[7][16]	= settr(356,0,21,1,0,"break", 0, 2, 0);
	trans[7][22]	= settr(362,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[7][21] = settr(361,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(361,0,17,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(361,0,19,0,0,"DO", 0, 2, 0);
	trans[7][17]	= settr(357,0,14,86,0,"((!((sem_sec==VERDE))&&t_min))", 1, 2, 0);
	trans[7][18]	= settr(358,0,14,1,0,"goto accept_S481", 0, 2, 0);
	trans[7][19]	= settr(359,0,21,87,0,"(!((sem_sec==VERDE)))", 1, 2, 0);
	trans[7][20]	= settr(360,0,21,1,0,"goto T2_S481", 0, 2, 0);
	trans[7][23]	= settr(363,0,30,1,0,"break", 0, 2, 0);
	trans[7][31]	= settr(371,0,30,1,0,".(goto)", 0, 2, 0);
	T = trans[7][30] = settr(370,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(370,0,24,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(370,0,26,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(370,0,28,0,0,"DO", 0, 2, 0);
	trans[7][24]	= settr(364,0,14,88,0,"(((!((sem_sec==VERDE))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[7][25]	= settr(365,0,14,1,0,"goto accept_S481", 0, 2, 0);
	trans[7][26]	= settr(366,0,21,89,0,"((!((sem_sec==VERDE))&&t_ambar))", 1, 2, 0);
	trans[7][27]	= settr(367,0,21,1,0,"goto T2_S481", 0, 2, 0);
	trans[7][28]	= settr(368,0,30,90,0,"(!((sem_sec==VERDE)))", 1, 2, 0);
	trans[7][29]	= settr(369,0,30,1,0,"goto T0_S481", 0, 2, 0);
	trans[7][32]	= settr(372,0,33,1,0,"break", 0, 2, 0);
	trans[7][33]	= settr(373,0,0,91,91,"-end-", 0, 3500, 0);

	/* proctype 6: p5 */

	trans[6] = (Trans **) emalloc(204*sizeof(Trans *));

	trans[6][14]	= settr(151,0,13,1,0,".(goto)", 0, 2, 0);
	T = trans[6][13] = settr(150,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,9,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(150,0,11,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(138,0,29,92,0,"(((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][2]	= settr(139,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][3]	= settr(140,0,64,93,0,"((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][4]	= settr(141,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][5]	= settr(142,0,111,94,0,"(((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar))", 1, 2, 0);
	trans[6][6]	= settr(143,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][7]	= settr(144,0,179,95,0,"((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1))))", 1, 2, 0);
	trans[6][8]	= settr(145,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][9]	= settr(146,0,13,96,0,"(t_ambar)", 1, 2, 0);
	trans[6][10]	= settr(147,0,13,1,0,"goto T0_init", 0, 2, 0);
	trans[6][11]	= settr(148,0,200,1,0,"(1)", 0, 2, 0);
	trans[6][12]	= settr(149,0,200,1,0,"goto T0_S5043", 0, 2, 0);
	trans[6][15]	= settr(152,0,22,1,0,"break", 0, 2, 0);
	trans[6][23]	= settr(160,0,22,1,0,".(goto)", 0, 2, 0);
	T = trans[6][22] = settr(159,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(159,0,16,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(159,0,18,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(159,0,20,0,0,"DO", 0, 2, 0);
	trans[6][16]	= settr(153,0,160,97,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][17]	= settr(154,0,160,1,0,"goto T0_S2546", 0, 2, 0);
	trans[6][18]	= settr(155,0,179,98,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][19]	= settr(156,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][20]	= settr(157,0,149,99,0,"(((!((peat_sec==1))&&(t_max&&t_min))||(!((peat_sec==1))&&t_ambar)))", 1, 2, 0);
	trans[6][21]	= settr(158,0,149,1,0,"goto T0_S385", 0, 2, 0);
	trans[6][24]	= settr(161,0,29,1,0,"break", 0, 2, 0);
	trans[6][30]	= settr(167,0,29,1,0,".(goto)", 0, 2, 0);
	T = trans[6][29] = settr(166,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(166,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(166,0,27,0,0,"DO", 0, 2, 0);
	trans[6][25]	= settr(162,0,160,100,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][26]	= settr(163,0,160,1,0,"goto T0_S2546", 0, 2, 0);
	trans[6][27]	= settr(164,0,179,101,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][28]	= settr(165,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][31]	= settr(168,0,38,1,0,"break", 0, 2, 0);
	trans[6][39]	= settr(176,0,38,1,0,".(goto)", 0, 2, 0);
	T = trans[6][38] = settr(175,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(175,0,32,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(175,0,34,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(175,0,36,0,0,"DO", 0, 2, 0);
	trans[6][32]	= settr(169,0,160,102,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][33]	= settr(170,0,160,1,0,"goto T0_S2546", 0, 2, 0);
	trans[6][34]	= settr(171,0,179,103,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][35]	= settr(172,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][36]	= settr(173,0,149,104,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][37]	= settr(174,0,149,1,0,"goto T0_S385", 0, 2, 0);
	trans[6][40]	= settr(177,0,53,1,0,"break", 0, 2, 0);
	trans[6][54]	= settr(191,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[6][53] = settr(190,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(190,0,41,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(190,0,43,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(190,0,45,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(190,0,47,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(190,0,49,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(190,0,51,0,0,"DO", 0, 2, 0);
	trans[6][41]	= settr(178,0,29,105,0,"(((!((peat_sec==1))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[6][42]	= settr(179,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][43]	= settr(180,0,64,106,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][44]	= settr(181,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][45]	= settr(182,0,38,107,0,"((!((peat_sec==1))&&t_min))", 1, 2, 0);
	trans[6][46]	= settr(183,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][47]	= settr(184,0,77,108,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][48]	= settr(185,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][49]	= settr(186,0,53,109,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][50]	= settr(187,0,53,1,0,"goto T3_S385", 0, 2, 0);
	trans[6][51]	= settr(188,0,22,110,0,"(((!((peat_sec==1))&&t_max)&&t_min))", 1, 2, 0);
	trans[6][52]	= settr(189,0,22,1,0,"goto accept_S385", 0, 2, 0);
	trans[6][55]	= settr(192,0,64,1,0,"break", 0, 2, 0);
	trans[6][65]	= settr(202,0,64,1,0,".(goto)", 0, 2, 0);
	T = trans[6][64] = settr(201,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,56,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,58,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(201,0,60,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(201,0,62,0,0,"DO", 0, 2, 0);
	trans[6][56]	= settr(193,0,29,111,0,"(((!((peat_sec==1))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[6][57]	= settr(194,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][58]	= settr(195,0,64,112,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][59]	= settr(196,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][60]	= settr(197,0,38,113,0,"((!((peat_sec==1))&&t_min))", 1, 2, 0);
	trans[6][61]	= settr(198,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][62]	= settr(199,0,77,114,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][63]	= settr(200,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][66]	= settr(203,0,77,1,0,"break", 0, 2, 0);
	trans[6][78]	= settr(215,0,77,1,0,".(goto)", 0, 2, 0);
	T = trans[6][77] = settr(214,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(214,0,67,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(214,0,69,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(214,0,71,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(214,0,73,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(214,0,75,0,0,"DO", 0, 2, 0);
	trans[6][67]	= settr(204,0,29,115,0,"(((!((peat_sec==1))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[6][68]	= settr(205,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][69]	= settr(206,0,64,116,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][70]	= settr(207,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][71]	= settr(208,0,38,117,0,"((!((peat_sec==1))&&t_min))", 1, 2, 0);
	trans[6][72]	= settr(209,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][73]	= settr(210,0,77,118,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][74]	= settr(211,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][75]	= settr(212,0,53,119,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][76]	= settr(213,0,53,1,0,"goto T3_S385", 0, 2, 0);
	trans[6][79]	= settr(216,0,96,1,0,"break", 0, 2, 0);
	trans[6][97]	= settr(234,0,96,1,0,".(goto)", 0, 2, 0);
	T = trans[6][96] = settr(233,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,80,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,82,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,84,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,88,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(233,0,92,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(233,0,94,0,0,"DO", 0, 2, 0);
	trans[6][80]	= settr(217,0,29,120,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][81]	= settr(218,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][82]	= settr(219,0,64,121,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][83]	= settr(220,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][84]	= settr(221,0,111,122,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][85]	= settr(222,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][86]	= settr(223,0,38,123,0,"(((!((peat_sec==1))&&t_max)&&t_min))", 1, 2, 0);
	trans[6][87]	= settr(224,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][88]	= settr(225,0,77,124,0,"((!((peat_sec==1))&&t_max))", 1, 2, 0);
	trans[6][89]	= settr(226,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][90]	= settr(227,0,128,125,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][91]	= settr(228,0,128,1,0,"goto T2_S3791", 0, 2, 0);
	trans[6][92]	= settr(229,0,96,126,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][93]	= settr(230,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[6][94]	= settr(231,0,22,127,0,"(((!((peat_sec==1))&&t_max)&&t_min))", 1, 2, 0);
	trans[6][95]	= settr(232,0,22,1,0,"goto accept_S385", 0, 2, 0);
	trans[6][98]	= settr(235,0,111,1,0,"break", 0, 2, 0);
	trans[6][112]	= settr(249,0,111,1,0,".(goto)", 0, 2, 0);
	T = trans[6][111] = settr(248,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(248,0,99,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(248,0,101,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(248,0,103,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(248,0,105,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(248,0,107,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(248,0,109,0,0,"DO", 0, 2, 0);
	trans[6][99]	= settr(236,0,29,128,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][100]	= settr(237,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][101]	= settr(238,0,64,129,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][102]	= settr(239,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][103]	= settr(240,0,111,130,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][104]	= settr(241,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][105]	= settr(242,0,38,131,0,"(((!((peat_sec==1))&&t_max)&&t_min))", 1, 2, 0);
	trans[6][106]	= settr(243,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][107]	= settr(244,0,77,132,0,"((!((peat_sec==1))&&t_max))", 1, 2, 0);
	trans[6][108]	= settr(245,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][109]	= settr(246,0,128,133,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][110]	= settr(247,0,128,1,0,"goto T2_S3791", 0, 2, 0);
	trans[6][113]	= settr(250,0,128,1,0,"break", 0, 2, 0);
	trans[6][129]	= settr(266,0,128,1,0,".(goto)", 0, 2, 0);
	T = trans[6][128] = settr(265,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(265,0,114,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(265,0,116,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(265,0,118,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(265,0,120,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(265,0,122,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(265,0,124,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(265,0,126,0,0,"DO", 0, 2, 0);
	trans[6][114]	= settr(251,0,29,134,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][115]	= settr(252,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][116]	= settr(253,0,64,135,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][117]	= settr(254,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][118]	= settr(255,0,111,136,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][119]	= settr(256,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][120]	= settr(257,0,38,137,0,"(((!((peat_sec==1))&&t_max)&&t_min))", 1, 2, 0);
	trans[6][121]	= settr(258,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][122]	= settr(259,0,77,138,0,"((!((peat_sec==1))&&t_max))", 1, 2, 0);
	trans[6][123]	= settr(260,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][124]	= settr(261,0,128,139,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][125]	= settr(262,0,128,1,0,"goto T2_S3791", 0, 2, 0);
	trans[6][126]	= settr(263,0,96,140,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][127]	= settr(264,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[6][130]	= settr(267,0,149,1,0,"break", 0, 2, 0);
	trans[6][150]	= settr(287,0,149,1,0,".(goto)", 0, 2, 0);
	T = trans[6][149] = settr(286,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,131,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,133,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,135,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,137,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,139,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,141,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,143,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(286,0,145,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(286,0,147,0,0,"DO", 0, 2, 0);
	trans[6][131]	= settr(268,0,29,141,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][132]	= settr(269,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][133]	= settr(270,0,64,142,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][134]	= settr(271,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][135]	= settr(272,0,111,143,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][136]	= settr(273,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][137]	= settr(274,0,179,144,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][138]	= settr(275,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][139]	= settr(276,0,38,145,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][140]	= settr(277,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][141]	= settr(278,0,77,146,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][142]	= settr(279,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][143]	= settr(280,0,128,147,0,"(((!((peat_sec==1))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[6][144]	= settr(281,0,128,1,0,"goto T2_S3791", 0, 2, 0);
	trans[6][145]	= settr(282,0,96,148,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][146]	= settr(283,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[6][147]	= settr(284,0,149,149,0,"(((!((peat_sec==1))&&t_max)&&t_min))", 1, 2, 0);
	trans[6][148]	= settr(285,0,149,1,0,"goto T0_S385", 0, 2, 0);
	trans[6][151]	= settr(288,0,160,1,0,"break", 0, 2, 0);
	trans[6][161]	= settr(298,0,160,1,0,".(goto)", 0, 2, 0);
	T = trans[6][160] = settr(297,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(297,0,152,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(297,0,154,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(297,0,156,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(297,0,158,0,0,"DO", 0, 2, 0);
	trans[6][152]	= settr(289,0,29,150,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][153]	= settr(290,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][154]	= settr(291,0,64,151,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][155]	= settr(292,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][156]	= settr(293,0,111,152,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][157]	= settr(294,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][158]	= settr(295,0,179,153,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][159]	= settr(296,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][162]	= settr(299,0,179,1,0,"break", 0, 2, 0);
	trans[6][180]	= settr(317,0,179,1,0,".(goto)", 0, 2, 0);
	T = trans[6][179] = settr(316,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,163,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,165,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,167,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,169,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,171,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,173,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(316,0,175,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(316,0,177,0,0,"DO", 0, 2, 0);
	trans[6][163]	= settr(300,0,29,154,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][164]	= settr(301,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][165]	= settr(302,0,64,155,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][166]	= settr(303,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][167]	= settr(304,0,111,156,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][168]	= settr(305,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][169]	= settr(306,0,38,157,0,"((((!((peat_sec==1))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][170]	= settr(307,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][171]	= settr(308,0,77,158,0,"(((!((peat_sec==1))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][172]	= settr(309,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][173]	= settr(310,0,128,159,0,"(((!((peat_sec==1))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[6][174]	= settr(311,0,128,1,0,"goto T2_S3791", 0, 2, 0);
	trans[6][175]	= settr(312,0,96,160,0,"((!((peat_sec==1))&&t_ambar))", 1, 2, 0);
	trans[6][176]	= settr(313,0,96,1,0,"goto T2_S385", 0, 2, 0);
	trans[6][177]	= settr(314,0,179,161,0,"(!((peat_sec==1)))", 1, 2, 0);
	trans[6][178]	= settr(315,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][181]	= settr(318,0,200,1,0,"break", 0, 2, 0);
	trans[6][201]	= settr(338,0,200,1,0,".(goto)", 0, 2, 0);
	T = trans[6][200] = settr(337,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,182,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,184,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,186,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,188,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,190,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,192,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,194,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(337,0,196,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(337,0,198,0,0,"DO", 0, 2, 0);
	trans[6][182]	= settr(319,0,29,162,0,"(((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][183]	= settr(320,0,29,1,0,"goto accept_S2546", 0, 2, 0);
	trans[6][184]	= settr(321,0,64,163,0,"((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][185]	= settr(322,0,64,1,0,"goto T3_S2546", 0, 2, 0);
	trans[6][186]	= settr(323,0,111,164,0,"(((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar))", 1, 2, 0);
	trans[6][187]	= settr(324,0,111,1,0,"goto T2_S2546", 0, 2, 0);
	trans[6][188]	= settr(325,0,179,165,0,"((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1))))", 1, 2, 0);
	trans[6][189]	= settr(326,0,179,1,0,"goto T0_S3791", 0, 2, 0);
	trans[6][190]	= settr(327,0,13,166,0,"(t_ambar)", 1, 2, 0);
	trans[6][191]	= settr(328,0,13,1,0,"goto T0_init", 0, 2, 0);
	trans[6][192]	= settr(329,0,200,1,0,"(1)", 0, 2, 0);
	trans[6][193]	= settr(330,0,200,1,0,"goto T0_S5043", 0, 2, 0);
	trans[6][194]	= settr(331,0,38,167,0,"(((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max)&&t_min))", 1, 2, 0);
	trans[6][195]	= settr(332,0,38,1,0,"goto accept_S3791", 0, 2, 0);
	trans[6][196]	= settr(333,0,77,168,0,"((((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar)&&t_max))", 1, 2, 0);
	trans[6][197]	= settr(334,0,77,1,0,"goto T3_S3791", 0, 2, 0);
	trans[6][198]	= settr(335,0,128,169,0,"(((!(!(((peat_sec==0)&&btn_p_sec)))&&!((peat_sec==1)))&&t_ambar))", 1, 2, 0);
	trans[6][199]	= settr(336,0,128,1,0,"goto T2_S3791", 0, 2, 0);
	trans[6][202]	= settr(339,0,203,1,0,"break", 0, 2, 0);
	trans[6][203]	= settr(340,0,0,170,170,"-end-", 0, 3500, 0);

	/* proctype 5: p4 */

	trans[5] = (Trans **) emalloc(34*sizeof(Trans *));

	trans[5][10]	= settr(114,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[5][9] = settr(113,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(113,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(113,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(113,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(113,0,7,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(105,0,14,171,0,"((((!(!(((peat_princ==0)&&btn_p_princ)))&&!((peat_princ==1)))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[5][2]	= settr(106,0,14,1,0,"goto accept_S481", 0, 2, 0);
	trans[5][3]	= settr(107,0,21,172,0,"(((!(!(((peat_princ==0)&&btn_p_princ)))&&!((peat_princ==1)))&&t_ambar))", 1, 2, 0);
	trans[5][4]	= settr(108,0,21,1,0,"goto T2_S481", 0, 2, 0);
	trans[5][5]	= settr(109,0,30,173,0,"((!(!(((peat_princ==0)&&btn_p_princ)))&&!((peat_princ==1))))", 1, 2, 0);
	trans[5][6]	= settr(110,0,30,1,0,"goto T0_S481", 0, 2, 0);
	trans[5][7]	= settr(111,0,9,1,0,"(1)", 0, 2, 0);
	trans[5][8]	= settr(112,0,9,1,0,"goto T0_init", 0, 2, 0);
	trans[5][11]	= settr(115,0,14,1,0,"break", 0, 2, 0);
	trans[5][15]	= settr(119,0,14,1,0,".(goto)", 0, 2, 0);
	T = trans[5][14] = settr(118,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(118,0,12,0,0,"DO", 0, 2, 0);
	trans[5][12]	= settr(116,0,30,174,0,"(!((peat_princ==1)))", 1, 2, 0);
	trans[5][13]	= settr(117,0,30,1,0,"goto T0_S481", 0, 2, 0);
	trans[5][16]	= settr(120,0,21,1,0,"break", 0, 2, 0);
	trans[5][22]	= settr(126,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[5][21] = settr(125,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(125,0,17,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(125,0,19,0,0,"DO", 0, 2, 0);
	trans[5][17]	= settr(121,0,14,175,0,"((!((peat_princ==1))&&t_min))", 1, 2, 0);
	trans[5][18]	= settr(122,0,14,1,0,"goto accept_S481", 0, 2, 0);
	trans[5][19]	= settr(123,0,21,176,0,"(!((peat_princ==1)))", 1, 2, 0);
	trans[5][20]	= settr(124,0,21,1,0,"goto T2_S481", 0, 2, 0);
	trans[5][23]	= settr(127,0,30,1,0,"break", 0, 2, 0);
	trans[5][31]	= settr(135,0,30,1,0,".(goto)", 0, 2, 0);
	T = trans[5][30] = settr(134,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(134,0,24,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(134,0,26,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(134,0,28,0,0,"DO", 0, 2, 0);
	trans[5][24]	= settr(128,0,14,177,0,"(((!((peat_princ==1))&&t_ambar)&&t_min))", 1, 2, 0);
	trans[5][25]	= settr(129,0,14,1,0,"goto accept_S481", 0, 2, 0);
	trans[5][26]	= settr(130,0,21,178,0,"((!((peat_princ==1))&&t_ambar))", 1, 2, 0);
	trans[5][27]	= settr(131,0,21,1,0,"goto T2_S481", 0, 2, 0);
	trans[5][28]	= settr(132,0,30,179,0,"(!((peat_princ==1)))", 1, 2, 0);
	trans[5][29]	= settr(133,0,30,1,0,"goto T0_S481", 0, 2, 0);
	trans[5][32]	= settr(136,0,33,1,0,"break", 0, 2, 0);
	trans[5][33]	= settr(137,0,0,180,180,"-end-", 0, 3500, 0);

	/* proctype 4: p3 */

	trans[4] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[4][7]	= settr(101,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[4][6] = settr(100,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(100,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(100,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 4][3] = settr(97,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(97,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[4][1]	= settr(95,0,6,181,181,"(!(!(((sem_sec==VERDE)&&(peat_sec==1)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached4[2] = 1;
	trans[4][2]	= settr(0,0,0,0,0,"assert(!(!(!(((sem_sec==VERDE)&&(peat_sec==1))))))",0,0,0);
	trans[4][4]	= settr(98,0,6,1,0,"(1)", 0, 2, 0);
	trans[4][5]	= settr(99,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[4][8]	= settr(102,0,9,1,0,"break", 0, 2, 0);
	trans[4][9]	= settr(103,0,10,1,0,"(1)", 0, 2, 0);
	trans[4][10]	= settr(104,0,0,182,182,"-end-", 0, 3500, 0);

	/* proctype 3: p2 */

	trans[3] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[3][7]	= settr(91,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[3][6] = settr(90,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(90,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(90,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 3][3] = settr(87,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(87,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(85,0,6,183,183,"(!(!(((sem_princ==VERDE)&&(peat_princ==1)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"assert(!(!(!(((sem_princ==VERDE)&&(peat_princ==1))))))",0,0,0);
	trans[3][4]	= settr(88,0,6,1,0,"(1)", 0, 2, 0);
	trans[3][5]	= settr(89,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[3][8]	= settr(92,0,9,1,0,"break", 0, 2, 0);
	trans[3][9]	= settr(93,0,10,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(94,0,0,184,184,"-end-", 0, 3500, 0);

	/* proctype 2: p1 */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][7]	= settr(81,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[2][6] = settr(80,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(80,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(80,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 2][3] = settr(77,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(77,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(75,0,6,185,185,"(!(!(((sem_princ==VERDE)&&(sem_sec==VERDE)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"assert(!(!(!(((sem_princ==VERDE)&&(sem_sec==VERDE))))))",0,0,0);
	trans[2][4]	= settr(78,0,6,1,0,"(1)", 0, 2, 0);
	trans[2][5]	= settr(79,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[2][8]	= settr(82,0,9,1,0,"break", 0, 2, 0);
	trans[2][9]	= settr(83,0,10,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(84,0,0,186,186,"-end-", 0, 3500, 0);

	/* proctype 1: entorno */

	trans[1] = (Trans **) emalloc(19*sizeof(Trans *));

	trans[1][16]	= settr(72,0,15,1,0,".(goto)", 0, 2, 0);
	T = trans[1][15] = settr(71,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(71,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(71,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(71,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(71,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(71,0,9,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(71,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(71,0,13,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(57,0,2,187,187,"coche_sec = 1", 1, 2, 0);
	trans[1][2]	= settr(58,0,15,188,0,"printf('  coche_sec = 1\\n')", 0, 2, 0);
	trans[1][3]	= settr(59,0,4,189,189,"btn_p_princ = 1", 1, 2, 0);
	trans[1][4]	= settr(60,0,15,190,0,"printf('  btn_p_princ = 1\\n')", 0, 2, 0);
	trans[1][5]	= settr(61,0,6,191,191,"btn_p_sec = 1", 1, 2, 0);
	trans[1][6]	= settr(62,0,15,192,0,"printf('  btn_p_sec = 1\\n')", 0, 2, 0);
	trans[1][7]	= settr(63,0,8,193,193,"t_min = 1", 1, 2, 0);
	trans[1][8]	= settr(64,0,15,194,0,"printf('  t_min = 1\\n')", 0, 2, 0);
	trans[1][9]	= settr(65,0,10,195,195,"t_max = 1", 1, 2, 0);
	trans[1][10]	= settr(66,0,15,196,0,"printf('  t_max = 1\\n')", 0, 2, 0);
	trans[1][11]	= settr(67,0,12,197,197,"t_ambar = 1", 1, 2, 0);
	trans[1][12]	= settr(68,0,15,198,0,"printf('  t_ambar = 1\\n')", 0, 2, 0);
	trans[1][13]	= settr(69,0,14,1,0,"(1)", 0, 2, 0);
	trans[1][14]	= settr(70,0,15,1,0,"(1)", 0, 2, 0);
	trans[1][17]	= settr(73,0,18,1,0,"break", 0, 2, 0);
	trans[1][18]	= settr(74,0,0,199,199,"-end-", 0, 3500, 0);

	/* proctype 0: fsm */

	trans[0] = (Trans **) emalloc(58*sizeof(Trans *));

	trans[0][55]	= settr(54,0,54,1,0,".(goto)", 0, 2, 0);
	T = trans[0][54] = settr(53,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(53,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(53,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(53,0,27,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(53,0,40,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,13,200,0,"((fsm_estado==S0_PRINC_VERDE))", 1, 2, 0);
	T = trans[ 0][13] = settr(12,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(12,2,11,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][11] = settr(10,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(10,2,2,0,0,"IF", 1, 2, 0);
	trans[0][2]	= settr(1,0,54,201,201,"(((coche_sec||btn_p_princ)&&t_min))", 1, 2, 0); /* m: 3 -> 54,0 */
	reached0[3] = 1;
	trans[0][3]	= settr(0,0,0,0,0,"sem_princ = AMBAR",0,0,0);
	trans[0][4]	= settr(0,0,0,0,0,"peat_sec = 0",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"t_min = 0",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"t_max = 0",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"t_ambar = 0",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"btn_p_princ = 0",0,0,0);
	trans[0][9]	= settr(0,0,0,0,0,"fsm_estado = S1_PRINC_AMBAR",0,0,0);
	trans[0][10]	= settr(0,0,0,0,0,"printf('estado = %e, sem_princ = %e, peat_sec = %d\\n',fsm_estado,sem_princ,peat_sec)",0,0,0);
	trans[0][12]	= settr(11,0,54,1,0,".(goto)", 1, 2, 0);
	trans[0][14]	= settr(13,0,26,202,0,"((fsm_estado==S1_PRINC_AMBAR))", 1, 2, 0);
	T = trans[ 0][26] = settr(25,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(25,2,24,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][24] = settr(23,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(23,2,15,0,0,"IF", 1, 2, 0);
	trans[0][15]	= settr(14,0,54,203,203,"(t_ambar)", 1, 2, 0); /* m: 16 -> 54,0 */
	reached0[16] = 1;
	trans[0][16]	= settr(0,0,0,0,0,"sem_princ = ROJO",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"sem_sec = VERDE",0,0,0);
	trans[0][18]	= settr(0,0,0,0,0,"peat_princ = 1",0,0,0);
	trans[0][19]	= settr(0,0,0,0,0,"t_min = 0",0,0,0);
	trans[0][20]	= settr(0,0,0,0,0,"t_max = 0",0,0,0);
	trans[0][21]	= settr(0,0,0,0,0,"t_ambar = 0",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"fsm_estado = S2_SEC_VERDE",0,0,0);
	trans[0][23]	= settr(0,0,0,0,0,"printf('estado = %e, sem_sec = %e, peat_princ = %d\\n',fsm_estado,sem_sec,peat_princ)",0,0,0);
	trans[0][25]	= settr(24,0,54,1,0,".(goto)", 1, 2, 0);
	trans[0][27]	= settr(26,0,39,204,0,"((fsm_estado==S2_SEC_VERDE))", 1, 2, 0);
	T = trans[ 0][39] = settr(38,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(38,2,37,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][37] = settr(36,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(36,2,28,0,0,"IF", 1, 2, 0);
	trans[0][28]	= settr(27,0,54,205,205,"((((!(coche_sec)||btn_p_sec)||t_max)&&t_min))", 1, 2, 0); /* m: 29 -> 54,0 */
	reached0[29] = 1;
	trans[0][29]	= settr(0,0,0,0,0,"sem_sec = AMBAR",0,0,0);
	trans[0][30]	= settr(0,0,0,0,0,"peat_princ = 0",0,0,0);
	trans[0][31]	= settr(0,0,0,0,0,"t_min = 0",0,0,0);
	trans[0][32]	= settr(0,0,0,0,0,"t_max = 0",0,0,0);
	trans[0][33]	= settr(0,0,0,0,0,"t_ambar = 0",0,0,0);
	trans[0][34]	= settr(0,0,0,0,0,"btn_p_sec = 0",0,0,0);
	trans[0][35]	= settr(0,0,0,0,0,"fsm_estado = S3_SEC_AMBAR",0,0,0);
	trans[0][36]	= settr(0,0,0,0,0,"printf('estado = %e, sem_sec = %e, peat_princ = %d\\n',fsm_estado,sem_sec,peat_princ)",0,0,0);
	trans[0][38]	= settr(37,0,54,1,0,".(goto)", 1, 2, 0);
	trans[0][40]	= settr(39,0,53,206,0,"((fsm_estado==S3_SEC_AMBAR))", 1, 2, 0);
	T = trans[ 0][53] = settr(52,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(52,2,51,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][51] = settr(50,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(50,2,41,0,0,"IF", 1, 2, 0);
	trans[0][41]	= settr(40,0,54,207,207,"(t_ambar)", 1, 2, 0); /* m: 42 -> 54,0 */
	reached0[42] = 1;
	trans[0][42]	= settr(0,0,0,0,0,"sem_sec = ROJO",0,0,0);
	trans[0][43]	= settr(0,0,0,0,0,"sem_princ = VERDE",0,0,0);
	trans[0][44]	= settr(0,0,0,0,0,"peat_sec = 1",0,0,0);
	trans[0][45]	= settr(0,0,0,0,0,"t_min = 0",0,0,0);
	trans[0][46]	= settr(0,0,0,0,0,"t_max = 0",0,0,0);
	trans[0][47]	= settr(0,0,0,0,0,"t_ambar = 0",0,0,0);
	trans[0][48]	= settr(0,0,0,0,0,"coche_sec = 0",0,0,0);
	trans[0][49]	= settr(0,0,0,0,0,"fsm_estado = S0_PRINC_VERDE",0,0,0);
	trans[0][50]	= settr(0,0,0,0,0,"printf('estado = %e, sem_princ = %e, peat_sec = %d\\n',fsm_estado,sem_princ,peat_sec)",0,0,0);
	trans[0][52]	= settr(51,0,54,1,0,".(goto)", 1, 2, 0);
	trans[0][56]	= settr(55,0,57,1,0,"break", 0, 2, 0);
	trans[0][57]	= settr(56,0,0,208,208,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
