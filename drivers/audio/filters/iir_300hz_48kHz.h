/************************************************************************************
**                                                                                 **
**                               mcHF QRP Transceiver                              **
**                             K Atanassov - M0NKA 2014                            **
**                                                                                 **
**---------------------------------------------------------------------------------**
**                                                                                 **
**  File name:                                                                     **
**  Description:                                                                   **
**  Last Modified:                                                                 **
**  Licence:		For radio amateurs experimentation, non-commercial use only!   **
************************************************************************************/

#ifndef __IIR_300HZ
#define __IIR_300HZ
//
// Filter designed 20140915 by C. Turner, KA7OEI using MatLAB fdatools
//
// NOTE:
//	- IIR structure is Lattice Autoregressive Moving-Average (ARMA)
//	- ARM FIR/IIR algorithms require time reverse-order coefficients!!!
//
//	Example of the nominal 750 Hz center-frequency Filter:
//
//	10th order Least pth Norm. bandpass filter
//	Fstop:  300, 1150 Hz
//	Fpass:  650, 865 Hz
//	-6dB points:  605, 896 Hz
//	-20dB points:  542, 941 Hz
//	-40dB points:  378, 1034 Hz
//	-60dB points:  117, 1300 Hz
//
#define NCoef 10
const uint16_t IIR_300hz_numStages = NCoef;
const float IIR_300hz_750_pkCoeffs[] =
{
		0.6638389770666,
		-0.9432793045429,
		0.9931572818928,
		-0.99490208834,
		0.9994136887677,
		-0.9953528009488,
		0.9997505392232,
		-0.9952102196236,
		0.9997691240612,
		-0.9951611365622
};

const float IIR_300hz_750_pvCoeffs[] =
{
		4.243819156898e-13,
		8.224911944155e-12,
		-4.676029444657e-10,
		2.380543840142e-09,
		2.234755136207e-08,
		-6.011219851084e-08,
		3.206911324933e-08,
		-2.102428396583e-09,
		1.361914130678e-10,
		-2.751860067837e-11,
		-3.841142944761e-12
};
//
// 800 Hz center frequency
//
const float IIR_300hz_800_pkCoeffs[] =
{
		0.3598068475824,
		-0.7708587980503,
		0.9840672392948,
		-0.9940893746229,
		0.9992596072719,
		-0.9947840676927,
		0.9997115935413,
		-0.994581742671,
		0.9997283862571,
		-0.9945156340289
};

const float IIR_300hz_800_pvCoeffs[] =
{
		5.743763747219e-08,
		6.667650467098e-07,
		3.436185886638e-06,
		7.59128282463e-06,
		5.921534720776e-06,
		4.35993876266e-07,
		2.268531575207e-07,
		2.299648909981e-10,
		3.168645007472e-10,
		-1.135157333698e-10,
		-2.740337536983e-11
};
//
// 850 Hz center frequency
//
const float IIR_300hz_850_pkCoeffs[] =
{
		0.5972831002965,
		-0.9270690421587,
		0.9919256024065,
		-0.993677325497,
		0.9992799313827,
		-0.9940660256068,
		0.9997187516598,
		-0.9939057533631,
		0.9997356169722,
		-0.9936751515953
};

const float IIR_300hz_850_pvCoeffs[] =
{
		-1.365061807511e-07,
		-1.352707446055e-06,
		-3.328975274812e-06,
		-3.089546370499e-06,
		-3.271600082292e-06,
		-1.836221368078e-07,
		-9.547308080433e-08,
		5.543970351291e-10,
		1.834318812024e-10,
		4.955891605807e-11,
		1.168341181315e-11
};
//
// 900 Hz center frequency
//
const float IIR_300hz_900_pkCoeffs[] =
{
		0.2404145938277,
		-0.7065424719275,
		0.9865362449812,
		-0.9929347642969,
		0.9994402509339,
		-0.9932401032789,
		0.999768358038,
		-0.9930965471476,
		0.9997795641085,
		-0.9929133249582
};

const float IIR_300hz_900_pvCoeffs[] =
{
		7.551489462758e-08,
		-1.969979907152e-07,
		1.12491902531e-07,
		-1.679477721816e-07,
		2.580094047367e-08,
		-8.074770734712e-08,
		2.248341177488e-09,
		-1.315881268732e-08,
		-5.621825510812e-11,
		-2.863100814891e-10,
		3.782446723225e-12,
};
//
// 950 Hz center frequency
//
const float IIR_300hz_950_pkCoeffs[] =
{
		0.6638389770666,
		-0.9432793045429,
		0.9931572818928,
		-0.99490208834,
		0.9994136887677,
		-0.9953528009488,
		0.9997505392232,
		-0.9952102196236,
		0.9997691240612,
		-0.9951611365622,
};

const float IIR_300hz_950_pvCoeffs[] =
{
		4.243819156898e-13,
		8.224911944155e-12,
		-4.676029444657e-10,
		2.380543840142e-09,
		2.234755136207e-08,
		-6.011219851084e-08,
		3.206911324933e-08,
		-2.102428396583e-09,
		1.361914130678e-10,
		-2.751860067837e-11,
		-3.841142944761e-12,
};
//
// 700 Hz center frequency
//
const float IIR_300hz_700_pkCoeffs[] =
{
		0.4480429880449,
		-0.8819936392687,
		0.9898882078435,
		-0.9960600604688,
		0.9993504142886,
		-0.9966596682176,
		0.9998311804438,
		-0.9963778357523,
		0.9998778740481,
		-0.9964534722628
};

const float IIR_300hz_700_pvCoeffs[] =
{
		5.303818668434e-10,
		-2.944253614732e-09,
		3.631472234077e-08,
		4.379431018061e-08,
		7.393321491321e-08,
		1.2122688906e-08,
		3.046318765341e-08,
		4.143198185354e-11,
		2.326198566602e-10,
		-1.050232089153e-11,
		-2.637266276093e-12
};
//
// 650 Hz center frequency
//
const float IIR_300hz_650_pkCoeffs[] =
{
		0.815217383681,
		-0.8672449236832,
		0.9531545900419,
		-0.9943858612931,
		0.9994004786552,
		-0.9965500962591,
		0.9997520423763,
		-0.9963670999224,
		0.9997597148304,
		-0.9965297770205
};

const float IIR_300hz_650_pvCoeffs[] =
{
		-1.069090628066e-08,
		-8.378098177524e-08,
		4.899527869074e-08,
		7.159291861548e-07,
		-8.883988014976e-07,
		4.199434507582e-07,
		-8.979970240088e-08,
		2.654223904174e-09,
		-6.667127698583e-10,
		-2.736932331636e-11,
		9.416431926939e-12
};
//
// 600 Hz center frequency
//
const float IIR_300hz_600_pkCoeffs[] =
{
		0.6161824181863,
		-0.9571744222249,
		0.9932992350502,
		-0.9966322624614,
		0.998916732498,
		-0.997355317507,
		0.999601417798,
		-0.9970100975174,
		0.9996965948531,
		-0.9972181760169
};

const float IIR_300hz_600_pvCoeffs[] =
{
		1.042330384315e-08,
		-4.262072268624e-08,
		8.616132763281e-08,
		-1.037945722155e-07,
		6.422352721376e-08,
		-8.271442223788e-08,
		3.972609991389e-08,
		-4.035348664075e-10,
		4.131618073603e-10,
		2.399611491634e-13,
		-3.141577179591e-12
};
//
// 550 Hz center frequency
//
const float IIR_300hz_550_pkCoeffs[] =
{
		0.7855352219243,
		-0.9760040168718,
		0.9954916275995,
		-0.9969933909903,
		0.9994652136182,
		-0.9975127686009,
		0.9998047412834,
		-0.9972775069409,
		0.9997528947886,
		-0.9977116143615
};

const float IIR_300hz_550_pvCoeffs[] =
{
		7.9887318297e-10,
		-5.940962968903e-10,
		2.494877105084e-10,
		-2.255357827994e-09,
		4.268504381064e-08,
		-3.373257621428e-08,
		7.066126822673e-09,
		-4.278073738039e-10,
		7.104393849969e-11,
		2.299720850213e-12,
		-5.042868123987e-13
};
//
// 500 Hz center frequency
//
const float IIR_300hz_500_pkCoeffs[] =
{
		0.006587114671795,
		-0.1126458603759,
		0.9616971978401,
		-0.9973862349429,
		0.999513940214,
		-0.9979849920542,
		0.9997683251286,
		-0.9978205856892,
		0.9997958867449,
		-0.9981199903684
};

const float IIR_300hz_500_pvCoeffs[] =
{
		1.126089657105e-10,
		-4.598122180688e-10,
		-3.402536862278e-09,
		2.13804823935e-09,
		2.077498241279e-08,
		7.069605147557e-09,
		2.920571045204e-08,
		1.268202606009e-09,
		1.571942982557e-09,
		-4.86183691275e-11,
		-6.236942982976e-12
};

#endif
