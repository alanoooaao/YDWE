#ifndef YDWECharExIncluded
#define YDWECharExIncluded

library YDWECharEx initializer onInit
    globals
		private integer array ord_hash
	endglobals
	
    public function ord takes string s returns integer
		local boolean islower = (StringCase(s, true) != s)
		local integer hash    = StringHash(s)/0x0010404A+3000
		if s == "/" then
            return 47
        endif
		if islower then
			return ord_hash[hash] + 32
		else
			return ord_hash[hash]
		endif
	endfunction
	
	private function onInit takes nothing returns nothing
		set ord_hash[4730] = 0
		set ord_hash[1886] = 1
		set ord_hash[4309] = 2
		set ord_hash[4235] = 3
		set ord_hash[3736] = 4
		set ord_hash[3702] = 5
		set ord_hash[4206] = 6
		set ord_hash[1370] = 7
		set ord_hash[2864] = 8
		set ord_hash[3140] = 9
		set ord_hash[4116] = 10
		set ord_hash[1460] = 11
		set ord_hash[3646] = 12
		set ord_hash[1874] = 13
		set ord_hash[2551] = 14
		set ord_hash[2502] = 15
		set ord_hash[3034] = 16
		set ord_hash[2552] = 17
		set ord_hash[3972] = 18
		set ord_hash[4137] = 19
		set ord_hash[4446] = 20
		set ord_hash[4630] = 21
		set ord_hash[1834] = 22
		set ord_hash[3110] = 23
		set ord_hash[1813] = 24
		set ord_hash[1249] = 25
		set ord_hash[1929] = 26
		set ord_hash[3133] = 27
		set ord_hash[1894] = 28
		set ord_hash[3127] = 29
		set ord_hash[1513] = 30
		set ord_hash[1296] = 31
		set ord_hash[1464] = 32
		set ord_hash[4865] = 33
		set ord_hash[3594] = 34
		set ord_hash[3002] = 35
		set ord_hash[3501] = 36
		set ord_hash[2964] = 37
		set ord_hash[3526] = 38
		set ord_hash[1671] = 39
		set ord_hash[2812] = 40
		set ord_hash[2869] = 41
		set ord_hash[2838] = 42
		set ord_hash[4853] = 43
		set ord_hash[3721] = 44
		set ord_hash[4877] = 45
		set ord_hash[2746] = 46
		set ord_hash[3779] = 47
		set ord_hash[2773] = 48
		set ord_hash[4063] = 49
		set ord_hash[2392] = 50
		set ord_hash[2198] = 51
		set ord_hash[2361] = 52
		set ord_hash[2114] = 53
		set ord_hash[2370] = 54
		set ord_hash[3327] = 55
		set ord_hash[1221] = 56
		set ord_hash[1616] = 57
		set ord_hash[1257] = 58
		set ord_hash[3265] = 59
		set ord_hash[1160] = 60
		set ord_hash[3324] = 61
		set ord_hash[1184] = 62
		set ord_hash[1670] = 63
		set ord_hash[1086] = 64
		set ord_hash[1510] = 65
		set ord_hash[1426] = 66
		set ord_hash[1536] = 67
		set ord_hash[1438] = 68
		set ord_hash[3561] = 69
		set ord_hash[3741] = 70
		set ord_hash[3524] = 71
		set ord_hash[1473] = 72
		set ord_hash[3596] = 73
		set ord_hash[1486] = 74
		set ord_hash[3597] = 75
		set ord_hash[1411] = 76
		set ord_hash[3678] = 77
		set ord_hash[3652] = 78
		set ord_hash[3755] = 79
		set ord_hash[3798] = 80
		set ord_hash[3797] = 81
		set ord_hash[3752] = 82
		set ord_hash[3710] = 83
		set ord_hash[3774] = 84
		set ord_hash[2040] = 85
		set ord_hash[3885] = 86
		set ord_hash[2492] = 87
		set ord_hash[1639] = 88
		set ord_hash[2968] = 89
		set ord_hash[1159] = 90
		set ord_hash[3436] = 91
		set ord_hash[4726] = 92
		set ord_hash[4211] = 93
		set ord_hash[3791] = 94
		set ord_hash[4747] = 95
		set ord_hash[1501] = 96
		set ord_hash[3660] = 97
		set ord_hash[4333] = 98
		set ord_hash[4254] = 99
		set ord_hash[3790] = 100
		set ord_hash[2739] = 101
		set ord_hash[4696] = 102
		set ord_hash[3229] = 103
		set ord_hash[2820] = 104
		set ord_hash[1686] = 105
		set ord_hash[4351] = 106
		set ord_hash[2181] = 107
		set ord_hash[3776] = 108
		set ord_hash[4756] = 109
		set ord_hash[4603] = 110
		set ord_hash[4822] = 111
		set ord_hash[3174] = 112
		set ord_hash[2062] = 113
		set ord_hash[1739] = 114
		set ord_hash[1455] = 115
		set ord_hash[4626] = 116
		set ord_hash[2914] = 117
		set ord_hash[2828] = 118
		set ord_hash[3564] = 119
		set ord_hash[2352] = 120
		set ord_hash[1000] = 121
		set ord_hash[4059] = 122
		set ord_hash[2677] = 123
		set ord_hash[3415] = 124
		set ord_hash[2142] = 125
		set ord_hash[1197] = 126
		set ord_hash[1222] = 127
		set ord_hash[2656] = 128
		set ord_hash[2865] = 129
		set ord_hash[1396] = 130
		set ord_hash[2415] = 131
		set ord_hash[1804] = 132
		set ord_hash[3955] = 133
		set ord_hash[4370] = 134
		set ord_hash[3418] = 135
		set ord_hash[3477] = 136
		set ord_hash[1539] = 137
		set ord_hash[4912] = 138
		set ord_hash[2017] = 139
		set ord_hash[4442] = 140
		set ord_hash[4546] = 141
		set ord_hash[1966] = 142
		set ord_hash[1104] = 143
		set ord_hash[3076] = 144
		set ord_hash[4086] = 145
		set ord_hash[5014] = 146
		set ord_hash[4301] = 147
		set ord_hash[1794] = 148
		set ord_hash[3753] = 149
		set ord_hash[4212] = 150
		set ord_hash[3224] = 151
		set ord_hash[2312] = 152
		set ord_hash[4622] = 153
		set ord_hash[3408] = 154
		set ord_hash[4645] = 155
		set ord_hash[3372] = 156
		set ord_hash[3680] = 157
		set ord_hash[1976] = 158
		set ord_hash[3624] = 159
		set ord_hash[1938] = 160
		set ord_hash[2458] = 161
		set ord_hash[2009] = 162
		set ord_hash[2499] = 163
		set ord_hash[1007] = 164
		set ord_hash[3453] = 165
		set ord_hash[1058] = 166
		set ord_hash[3429] = 167
		set ord_hash[2101] = 168
		set ord_hash[3911] = 169
		set ord_hash[2692] = 170
		set ord_hash[3938] = 171
		set ord_hash[1588] = 172
		set ord_hash[4942] = 173
		set ord_hash[1610] = 174
		set ord_hash[4910] = 175
		set ord_hash[1888] = 176
		set ord_hash[3139] = 177
		set ord_hash[3304] = 178
		set ord_hash[3152] = 179
		set ord_hash[3352] = 180
		set ord_hash[2186] = 181
		set ord_hash[4433] = 182
		set ord_hash[2172] = 183
		set ord_hash[4214] = 184
		set ord_hash[2548] = 185
		set ord_hash[4465] = 186
		set ord_hash[2460] = 187
		set ord_hash[4424] = 188
		set ord_hash[3478] = 189
		set ord_hash[3404] = 190
		set ord_hash[3513] = 191
		set ord_hash[3428] = 192
		set ord_hash[1787] = 193
		set ord_hash[2230] = 194
		set ord_hash[4845] = 195
		set ord_hash[3149] = 196
		set ord_hash[4855] = 197
		set ord_hash[3161] = 198
		set ord_hash[1604] = 199
		set ord_hash[3800] = 200
		set ord_hash[1593] = 201
		set ord_hash[3364] = 202
		set ord_hash[2562] = 203
		set ord_hash[2456] = 204
		set ord_hash[2584] = 205
		set ord_hash[2404] = 206
		set ord_hash[1666] = 207
		set ord_hash[1844] = 208
		set ord_hash[1878] = 209
		set ord_hash[1925] = 210
		set ord_hash[4000] = 211
		set ord_hash[4931] = 212
		set ord_hash[2961] = 213
		set ord_hash[4964] = 214
		set ord_hash[3658] = 215
		set ord_hash[1108] = 216
		set ord_hash[3047] = 217
		set ord_hash[1840] = 218
		set ord_hash[3356] = 219
		set ord_hash[4393] = 220
		set ord_hash[3145] = 221
		set ord_hash[1853] = 222
		set ord_hash[3796] = 223
		set ord_hash[2396] = 224
		set ord_hash[4593] = 225
		set ord_hash[3142] = 226
		set ord_hash[2016] = 227
		set ord_hash[4706] = 228
		set ord_hash[4664] = 229
		set ord_hash[3210] = 230
		set ord_hash[2116] = 231
		set ord_hash[1156] = 232
		set ord_hash[1260] = 233
		set ord_hash[984] = 234
		set ord_hash[1757] = 235
		set ord_hash[2459] = 236
		set ord_hash[4681] = 237
		set ord_hash[1029] = 238
		set ord_hash[1811] = 239
		set ord_hash[4562] = 240
		set ord_hash[4236] = 241
		set ord_hash[1097] = 242
		set ord_hash[4793] = 243
		set ord_hash[3714] = 244
		set ord_hash[4220] = 245
		set ord_hash[1202] = 246
		set ord_hash[4685] = 247
		set ord_hash[1699] = 248
		set ord_hash[2574] = 249
		set ord_hash[1387] = 250
		set ord_hash[1750] = 251
		set ord_hash[3267] = 252
		set ord_hash[2747] = 253
		set ord_hash[1337] = 254
		set ord_hash[2210] = 255
	endfunction
endlibrary

#endif
