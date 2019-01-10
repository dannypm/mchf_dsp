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

#ifndef __IIR_1_8K
#define __IIR_1_8K
//
// Filter designed 20140915 by C. Turner, KA7OEI using MatLAB fdatools
//
// NOTE:
//	- IIR structure is Lattice Autoregressive Moving-Average (ARMA)
//	- ARM FIR/IIR algorithms require time reverse-order coefficients!!!
//
//
//	Example of the nominal 1420 Hz center-frequency Filter:
//
//	10th order Elliptic bandpass filter, 2db ripple
//	Fpass:  550, 2300 Hz
//	-6dB points:  539, 2347 Hz
//	-20dB points:  500, 2519 Hz
//	-40dB points:  437, 2886 Hz
//	-60dB points:  393, 3188 Hz
//
#define NCoef 10
const uint16_t IIR_1k8_numStages = NCoef;
const float IIR_1k8_1k425_pkCoeffs[] =
{
		0.851416855555,
		-0.9759567732947,
		0.9894344323819,
		-0.9839577920325,
		0.9911874695995,
		-0.9800496558366,
		0.993750707617,
		-0.9933271487203,
		0.9998048665283,
		-0.9970730502381
};

const float IIR_1k8_1k425_pvCoeffs[] =
{
		-0.0006977844983671,
		-0.001540663737181,
		-0.0007753565327379,
		-0.0005810053388122,
		-4.555059947748e-05,
		-2.145478530589e-05,
		9.332194861388e-06,
		1.320933668898e-06,
		-9.264939056924e-08,
		-1.74615756663e-09,
		5.544996959424e-11
};
//
// -150 Hz, 1275 Hz center frequency
//
const float IIR_1k8_1k275_pkCoeffs[] =
{
		0.8514422802144,
		-0.9793909406616,
		0.989909728255,
		-0.9871329146546,
		0.990822599688,
		-0.9836658812598,
		0.9958238044494,
		-0.9967070514168,
		0.9998939396907,
		-0.9984671224608
};

const float IIR_1k8_1k275_pvCoeffs[] =
{
		-0.0007463016888929,
		-0.001643664057809,
		-0.0008161625208297,
		-0.0006158837706951,
		-6.256796480653e-05,
		-2.842180073554e-05,
		6.844618127392e-06,
		8.430342681442e-07,
		-2.719741869217e-08,
		-5.001651020436e-10,
		8.005439193493e-12
};
//
// -300 Hz, 1125 Hz center frequency
//
const float IIR_1k8_1k125_pkCoeffs[] =
{
		0.8514716870738,
		-0.9824485800325,
		0.9904863158848,
		-0.9899040607543,
		0.9900721567129,
		-0.9879837112813,
		0.9980535779134,
		-0.9988397007271,
		0.9999585081735,
		-0.9994096628065
};

const float IIR_1k8_1k125_pvCoeffs[] =
{
		-0.0008050289486224,
		-0.001766856365847,
		-0.000860788972692,
		-0.0006527577839179,
		-7.815563556868e-05,
		-3.493803191007e-05,
		4.333083526244e-06,
		3.846241381153e-07,
		-4.13930391352e-09,
		-7.45349294437e-11,
		4.466526974667e-13
};
//
// +150 Hz, 1575 Hz center frequency
//
const float IIR_1k8_1k575_pkCoeffs[] =
{
		0.8513946446969,
		-0.9721471906676,
		0.9890425448572,
		-0.9803706311498,
		0.9913742669909,
		-0.9765137119977,
		0.9921902004694,
		-0.9888046663031,
		0.9996843667572,
		-0.9952225756738
};

const float IIR_1k8_1k575_pvCoeffs[] =
{
		-0.0006570682123567,
		-0.001453099600975,
		-0.0007374810627321,
		-0.0005475654313941,
		-2.732252795404e-05,
		-1.416421176273e-05,
		1.17306063556e-05,
		1.735209452236e-06,
		-2.236011235491e-07,
		-4.362155706962e-09,
		2.380866482698e-10
};
//
// +300 Hz, 1725 Hz center frequency
//
const float IIR_1k8_1k725_pkCoeffs[] =
{
		0.8513750640672,
		-0.967963504765,
		0.9887183022633,
		-0.97637189355,
		0.9914752839828,
		-0.9727544622421,
		0.9911739121719,
		-0.9833515097263,
		0.9995292118869,
		-0.9929124798589
};

const float IIR_1k8_1k725_pvCoeffs[] =
{
		-0.0006224345293612,
		-0.001377568843944,
		-0.0007018736639801,
		-0.0005151635806218,
		-8.080377077842e-06,
		-6.673637608645e-06,
		1.395697790705e-05,
		2.032962862906e-06,
		-4.371861153027e-07,
		-8.787001839691e-09,
		7.608586965763e-10
};

#endif
