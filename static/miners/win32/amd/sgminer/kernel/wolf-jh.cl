#ifndef WOLF_JH_CL
#define WOLF_JH_CL

// JH implementation helper functions and macros by Wolf

static const __constant ulong C_new[] =
{
	0x67F815DFA2DED572UL, 0x571523B70A15847BUL, 0xF6875A4D90D6AB81UL, 0x402BD1C3C54F9F4EUL, 
	0x9CFA455CE03A98EAUL, 0x9A99B26699D2C503UL, 0x8A53BBF2B4960266UL, 0x31A2DB881A1456B5UL, 
	0xDB0E199A5C5AA303UL, 0x1044C1870AB23F40UL, 0x1D959E848019051CUL, 0xDCCDE75EADEB336FUL, 
	0x416BBF029213BA10UL, 0xD027BBF7156578DCUL, 0x5078AA3739812C0AUL, 0xD3910041D2BF1A3FUL, 
	0x907ECCF60D5A2D42UL, 0xCE97C0929C9F62DDUL, 0xAC442BC70BA75C18UL, 0x23FCC663D665DFD1UL, 
	0x1AB8E09E036C6E97UL, 0xA8EC6C447E450521UL, 0xFA618E5DBB03F1EEUL, 0x97818394B29796FDUL, 
	0x2F3003DB37858E4AUL, 0x956A9FFB2D8D672AUL, 0x6C69B8F88173FE8AUL, 0x14427FC04672C78AUL, 
	0xC45EC7BD8F15F4C5UL, 0x80BB118FA76F4475UL, 0xBC88E4AEB775DE52UL, 0xF4A3A6981E00B882UL, 
	0x1563A3A9338FF48EUL, 0x89F9B7D524565FAAUL, 0xFDE05A7C20EDF1B6UL, 0x362C42065AE9CA36UL, 
	0x3D98FE4E433529CEUL, 0xA74B9A7374F93A53UL, 0x86814E6F591FF5D0UL, 0x9F5AD8AF81AD9D0EUL, 
	0x6A6234EE670605A7UL, 0x2717B96EBE280B8BUL, 0x3F1080C626077447UL, 0x7B487EC66F7EA0E0UL, 
	0xC0A4F84AA50A550DUL, 0x9EF18E979FE7E391UL, 0xD48D605081727686UL, 0x62B0E5F3415A9E7EUL, 
	0x7A205440EC1F9FFCUL, 0x84C9F4CE001AE4E3UL, 0xD895FA9DF594D74FUL, 0xA554C324117E2E55UL, 
	0x286EFEBD2872DF5BUL, 0xB2C4A50FE27FF578UL, 0x2ED349EEEF7C8905UL, 0x7F5928EB85937E44UL, 
	0x4A3124B337695F70UL, 0x65E4D61DF128865EUL, 0xE720B95104771BC7UL, 0x8A87D423E843FE74UL, 
	0xF2947692A3E8297DUL, 0xC1D9309B097ACBDDUL, 0xE01BDC5BFB301B1DUL, 0xBF829CF24F4924DAUL, 
	0xFFBF70B431BAE7A4UL, 0x48BCF8DE0544320DUL, 0x39D3BB5332FCAE3BUL, 0xA08B29E0C1C39F45UL, 
	0x0F09AEF7FD05C9E5UL, 0x34F1904212347094UL, 0x95ED44E301B771A2UL, 0x4A982F4F368E3BE9UL, 
	0x15F66CA0631D4088UL, 0xFFAF52874B44C147UL, 0x30C60AE2F14ABB7EUL, 0xE68C6ECCC5B67046UL, 
	0x00CA4FBD56A4D5A4UL, 0xAE183EC84B849DDAUL, 0xADD1643045CE5773UL, 0x67255C1468CEA6E8UL, 
	0x16E10ECBF28CDAA3UL, 0x9A99949A5806E933UL, 0x7B846FC220B2601FUL, 0x1885D1A07FACCED1UL, 
	0xD319DD8DA15B5932UL, 0x46B4A5AAC01C9A50UL, 0xBA6B04E467633D9FUL, 0x7EEE560BAB19CAF6UL, 
	0x742128A9EA79B11FUL, 0xEE51363B35F7BDE9UL, 0x76D350755AAC571DUL, 0x01707DA3FEC2463AUL, 
	0x42D8A498AFC135F7UL, 0x79676B9E20ECED78UL, 0xA8DB3AEA15638341UL, 0x832C83324D3BC3FAUL, 
	0xF347271C1F3B40A7UL, 0x9A762DB734F04059UL, 0xFD4F21D26C4E3EE7UL, 0xEF5957DC398DFDB8UL, 
	0xDAEB492B490C9B8DUL, 0x0D70F36849D7A25BUL, 0x84558D7AD0AE3B7DUL, 0x658EF8E4F0E9A5F5UL, 
	0x533B1036F4A2B8A0UL, 0x5AEC3E759E07A80CUL, 0x4F88E85692946891UL, 0x4CBCBAF8555CB05BUL, 
	0x7B9487F3993BBBE3UL, 0x5D1C6B72D6F4DA75UL, 0x6DB334DC28ACAE64UL, 0x71DB28B850A5346CUL, 
	0x2A518D10F2E261F8UL, 0xFC75DD593364DBE3UL, 0xA23FCE43F1BCAC1CUL, 0xB043E8023CD1BB67UL, 
	0x75A12988CA5B0A33UL, 0x5C5316B44D19347FUL, 0x1E4D790EC3943B92UL, 0x3FAFEEB6D7757479UL, 
	0x21391ABEF7D4A8EAUL, 0x5127234C097EF45CUL, 0xD23C32BA5324A326UL, 0xADD5A66D4A17A344UL, 
	0x08C9F2AFA63E1DB5UL, 0x563C6B91983D5983UL, 0x4D608672A17CF84CUL, 0xF6C76E08CC3EE246UL, 
	0x5E76BCB1B333982FUL, 0x2AE6C4EFA566D62BUL, 0x36D4C1BEE8B6F406UL, 0x6321EFBC1582EE74UL, 
	0x69C953F40D4EC1FDUL, 0x26585806C45A7DA7UL, 0x16FAE0061614C17EUL, 0x3F9D63283DAF907EUL, 
	0x0CD29B00E3F2C9D2UL, 0x300CD4B730CEAA5FUL, 0x9832E0F216512A74UL, 0x9AF8CEE3D830EB0DUL, 
	0x9279F1B57B9EC54BUL, 0xD36886046EE651FFUL, 0x316796E6574D239BUL, 0x05750A17F3A6E6CCUL, 
	0xCE6C3213D98176B1UL, 0x62A205F88452173CUL, 0x47154778B3CB2BF4UL, 0x486A9323825446FFUL, 
	0x65655E4E0758DF38UL, 0x8E5086FC897CFCF2UL, 0x86CA0BD0442E7031UL, 0x4E477830A20940F0UL, 
	0x8338F7D139EEA065UL, 0xBD3A2CE437E95EF7UL, 0x6FF8130126B29721UL, 0xE7DE9FEFD1ED44A3UL, 
	0xD992257615DFA08BUL, 0xBE42DC12F6F7853CUL, 0x7EB027AB7CECA7D8UL, 0xDEA83EAADA7D8D53UL, 
	0xD86902BD93CE25AAUL, 0xF908731AFD43F65AUL, 0xA5194A17DAEF5FC0UL, 0x6A21FD4C33664D97UL, 
	0x701541DB3198B435UL, 0x9B54CDEDBB0F1EEAUL, 0x72409751A163D09AUL, 0xE26F4791BF9D75F6UL
};

#ifdef WOLF_JH_64BIT

#define JH_BASE_TYPE			ulong
#define JH_CHUNK_TYPE			ulong4
#define JH_BASE_TYPE_CAST(x)	as_ulong(x)
#define JH_CHUNK_TYPE_CAST(x)	as_ulong4(x)

void Lb_new(JH_CHUNK_TYPE *lo, JH_CHUNK_TYPE *hi)
{	
	*hi ^= shuffle(*lo, (JH_CHUNK_TYPE)(1, 2, 3, 0));
	(*hi).s2 ^= (*lo).s0;
	
	*lo ^= shuffle(*hi, (JH_CHUNK_TYPE)(1, 2, 3, 0));
	(*lo).s2 ^= (*hi).s0;
}

void JH_RND(JH_CHUNK_TYPE *xh, JH_CHUNK_TYPE *xl, uchar rnd)
{
	if(rnd < 6)
	{
		ulong rndshift = 1 << rnd;
		*xh = bitselect(*xh << rndshift, *xh >> rndshift, JH_CHUNK_TYPE_CAST((ulong4)(0xFFFFFFFFFFFFFFFFUL / (1UL | (1UL << rndshift)))));
		*xl = bitselect(*xl << rndshift, *xl >> rndshift, JH_CHUNK_TYPE_CAST((ulong4)(0xFFFFFFFFFFFFFFFFUL / (1UL | (1UL << rndshift)))));
	}
	else
	{
		//*xh ^= *xl; *xl ^= *xh; *xh ^= *xl;
		const JH_CHUNK_TYPE tmp = *xh;
		*xh = *xl;
		*xl = tmp;
	}
}

#elif defined(WOLF_JH_32BIT)

#define JH_BASE_TYPE			uint2
#define JH_CHUNK_TYPE			uint8
#define JH_BASE_TYPE_CAST(x)	as_uint2(x)
#define JH_CHUNK_TYPE_CAST(x)	as_uint8(x)

void Lb_new(JH_CHUNK_TYPE *lo, JH_CHUNK_TYPE *hi)
{	
	*hi ^= shuffle(*lo, (JH_CHUNK_TYPE)(2, 3, 4, 5, 6, 7, 0, 1));
	(*hi).hi.lo ^= (*lo).lo.lo;
	
	*lo ^= shuffle(*hi, (JH_CHUNK_TYPE)(2, 3, 4, 5, 6, 7, 0, 1));
	(*lo).hi.lo ^= (*hi).lo.lo;
}

void JH_RND(JH_CHUNK_TYPE *xh, JH_CHUNK_TYPE *xl, uchar rnd)
{
	if(rnd < 5)
	{
		#if !defined(QUARKCOIN_CL) && defined(__Tahiti__)
		const JH_CHUNK_TYPE rndvals[5] = { JH_CHUNK_TYPE_CAST((ulong4)(0x5555555555555555UL)), JH_CHUNK_TYPE_CAST((ulong4)(0x3333333333333333UL)), JH_CHUNK_TYPE_CAST((ulong4)(0x0F0F0F0F0F0F0F0FUL)), JH_CHUNK_TYPE_CAST((ulong4)(0x00FF00FF00FF00FFUL)), JH_CHUNK_TYPE_CAST((ulong4)(0x0000FFFF0000FFFFUL)) };
		*xh = bitselect(*xh << (1 << rnd), *xh >> (1 << rnd), rndvals[rnd]);
		*xl = bitselect(*xl << (1 << rnd), *xl >> (1 << rnd), rndvals[rnd]);
		#else
		ulong rndshift = 1 << rnd;
		*xh = bitselect(*xh << rndshift, *xh >> rndshift, JH_CHUNK_TYPE_CAST((ulong4)(0xFFFFFFFFFFFFFFFFUL / (1UL | (1UL << rndshift)))));
		*xl = bitselect(*xl << rndshift, *xl >> rndshift, JH_CHUNK_TYPE_CAST((ulong4)(0xFFFFFFFFFFFFFFFFUL / (1UL | (1UL << rndshift)))));
		#endif
	}
	else if(rnd == 5)
	{
		*xh = (*xh).s10325476;
		*xl = (*xl).s10325476;
	}
	else
	{
		const JH_CHUNK_TYPE tmp = *xh;
		*xh = *xl;
		*xl = tmp;
	}
}

#else

#define JH_BASE_TYPE			ushort4
#define JH_CHUNK_TYPE			ushort16
#define JH_BASE_TYPE_CAST(x)	as_ushort4(x)
#define JH_CHUNK_TYPE_CAST(x)	as_ushort16(x)

void Lb_new(JH_CHUNK_TYPE *lo, JH_CHUNK_TYPE *hi)
{	
	*hi ^= shuffle(*lo, (JH_CHUNK_TYPE)(4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3));
	(*hi).s89ab ^= (*lo).s0123;
	
	*lo ^= shuffle(*hi, (JH_CHUNK_TYPE)(4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3));
	(*lo).s89ab ^= (*hi).s0123;
}

void JH_RND(JH_CHUNK_TYPE *xh, JH_CHUNK_TYPE *xl, uchar rnd)
{
	if(rnd < 4)
	{
		const JH_CHUNK_TYPE rndvals[4] = { JH_CHUNK_TYPE_CAST((ulong4)(0x5555555555555555UL)), JH_CHUNK_TYPE_CAST((ulong4)(0x3333333333333333UL)), JH_CHUNK_TYPE_CAST((ulong4)(0x0F0F0F0F0F0F0F0FUL)), JH_CHUNK_TYPE_CAST((ulong4)(0x00FF00FF00FF00FFUL)) };
		*xh = bitselect(*xh << (1 << rnd), *xh >> (1 << rnd), rndvals[rnd]);
		*xl = bitselect(*xl << (1 << rnd), *xl >> (1 << rnd), rndvals[rnd]);
	}
	else if(rnd == 4)
	{
		*xh = (*xh).s1032547698badcfe;
		*xl = (*xl).s1032547698badcfe;
	}
	else if(rnd == 5)
	{
		*xh = (*xh).s23016745ab89efcd;
		*xl = (*xl).s23016745ab89efcd;
	}
	else
	{
		const JH_CHUNK_TYPE tmp = *xh;
		*xh = *xl;
		*xl = tmp;
	}
}

#endif

#ifdef WOLF_JH_64BIT

JH_CHUNK_TYPE Sb_new(JH_CHUNK_TYPE x, JH_BASE_TYPE c)
{
	x.s3 = ~x.s3;
	x.s0 ^= c & ~x.s2;
	const JH_BASE_TYPE tmp = c ^ (x.s0 & x.s1);
	x.s0 ^= x.s2 & x.s3;
	x.s3 ^= ~x.s1 & x.s2;
	x.s1 ^= x.s0 & x.s2;
	x.s2 ^= x.s0 & ~x.s3;
	x.s0 ^= x.s1 | x.s3;
	x.s3 ^= x.s1 & x.s2;
	x.s1 ^= tmp & x.s0;
	x.s2 ^= tmp;
	return(x);
}

#else

JH_CHUNK_TYPE Sb_new(JH_CHUNK_TYPE x, JH_BASE_TYPE c)
{
	x.hi.hi = ~x.hi.hi;
	x.lo.lo ^= c & ~x.hi.lo;
	const JH_BASE_TYPE tmp = c ^ (x.lo.lo & x.lo.hi);
	x.lo.lo ^= x.hi.lo & x.hi.hi;
	x.hi.hi ^= ~x.lo.hi & x.hi.lo;
	x.lo.hi ^= x.lo.lo & x.hi.lo;
	x.hi.lo ^= x.lo.lo & ~x.hi.hi;
	x.lo.lo ^= x.lo.hi | x.hi.hi;
	x.hi.hi ^= x.lo.hi & x.hi.lo;
	x.lo.hi ^= tmp & x.lo.lo;
	x.hi.lo ^= tmp;
	return(x);
}

#endif

#define Ceven_hi_new(r)   	JH_BASE_TYPE_CAST(C_new[((r) << 2) + 0])
#define Ceven_lo_new(r)   	JH_BASE_TYPE_CAST(C_new[((r) << 2) + 1])
#define Codd_hi_new(r)    	JH_BASE_TYPE_CAST(C_new[((r) << 2) + 2])
#define Codd_lo_new(r)    	JH_BASE_TYPE_CAST(C_new[((r) << 2) + 3])

#endif
