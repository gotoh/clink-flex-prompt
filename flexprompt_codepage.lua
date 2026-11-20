-- 'code page' custom module
--
-- The module name is 'cp' and it will be replaced with pre-defined code page name
-- like 'shift_jis', or user defined name like 'SJIS', or simple 'CP932' style text.
--
-- See also
-- https://github.com/chrisant996/clink-flex-prompt/blob/master/README.md#writing-custom-prompt-modules
--
--
-- You can define code page name and color in flexprompt_config.lua.
--
-- With specified color;
--   flexprompt.settings.codepages[932] = {"SJIS", "orange"}
--
-- With default color and codepage number text;
--   flexprompt.settings.codepages[932] = "SJIS"
--

-- Pre-defined names from all EncodingInfo in .NET framework 4.8.
-- Note that not all the code page can be used in console.
local cp = {}
cp[37] = "IBM037" -- IBM EBCDIC (US-Canada)
cp[437] = "IBM437" -- OEM United States
cp[500] = "IBM500" -- IBM EBCDIC (International)
cp[708] = "ASMO-708" -- Arabic (ASMO 708)
cp[720] = "DOS-720" -- Arabic (DOS)
cp[737] = "ibm737" -- Greek (DOS)
cp[775] = "ibm775" -- Baltic (DOS)
cp[850] = "ibm850" -- Western European (DOS)
cp[852] = "ibm852" -- Central European (DOS)
cp[855] = "IBM855" -- OEM Cyrillic
cp[857] = "ibm857" -- Turkish (DOS)
cp[858] = "IBM00858" -- OEM Multilingual Latin I
cp[860] = "IBM860" -- Portuguese (DOS)
cp[861] = "ibm861" -- Icelandic (DOS)
cp[862] = "DOS-862" -- Hebrew (DOS)
cp[863] = "IBM863" -- French Canadian (DOS)
cp[864] = "IBM864" -- Arabic (864)
cp[865] = "IBM865" -- Nordic (DOS)
cp[866] = "cp866" -- Cyrillic (DOS)
cp[869] = "ibm869" -- Greek, Modern (DOS)
cp[870] = "IBM870" -- IBM EBCDIC (Multilingual Latin-2)
cp[874] = "windows-874" -- Thai (Windows)
cp[875] = "cp875" -- IBM EBCDIC (Greek Modern)
cp[932] = "shift_jis" -- Japanese (Shift-JIS)
cp[936] = "gb2312" -- Chinese Simplified (GB2312)
cp[949] = "ks_c_5601-1987" -- Korean
cp[950] = "big5" -- Chinese Traditional (Big5)
cp[1026] = "IBM1026" -- IBM EBCDIC (Turkish Latin-5)
cp[1047] = "IBM01047" -- IBM Latin-1
cp[1140] = "IBM01140" -- IBM EBCDIC (US-Canada-Euro)
cp[1141] = "IBM01141" -- IBM EBCDIC (Germany-Euro)
cp[1142] = "IBM01142" -- IBM EBCDIC (Denmark-Norway-Euro)
cp[1143] = "IBM01143" -- IBM EBCDIC (Finland-Sweden-Euro)
cp[1144] = "IBM01144" -- IBM EBCDIC (Italy-Euro)
cp[1145] = "IBM01145" -- IBM EBCDIC (Spain-Euro)
cp[1146] = "IBM01146" -- IBM EBCDIC (UK-Euro)
cp[1147] = "IBM01147" -- IBM EBCDIC (France-Euro)
cp[1148] = "IBM01148" -- IBM EBCDIC (International-Euro)
cp[1149] = "IBM01149" -- IBM EBCDIC (Icelandic-Euro)
cp[1200] = "utf-16" -- Unicode
cp[1201] = "utf-16BE" -- Unicode (Big-Endian)
cp[1250] = "windows-1250" -- Central European (Windows)
cp[1251] = "windows-1251" -- Cyrillic (Windows)
cp[1252] = "Windows-1252" -- Western European (Windows)
cp[1253] = "windows-1253" -- Greek (Windows)
cp[1254] = "windows-1254" -- Turkish (Windows)
cp[1255] = "windows-1255" -- Hebrew (Windows)
cp[1256] = "windows-1256" -- Arabic (Windows)
cp[1257] = "windows-1257" -- Baltic (Windows)
cp[1258] = "windows-1258" -- Vietnamese (Windows)
cp[1361] = "Johab" -- Korean (Johab)
cp[10000] = "macintosh" -- Western European (Mac)
cp[10001] = "x-mac-japanese" -- Japanese (Mac)
cp[10002] = "x-mac-chinesetrad" -- Chinese Traditional (Mac)
cp[10003] = "x-mac-korean" -- Korean (Mac)
cp[10004] = "x-mac-arabic" -- Arabic (Mac)
cp[10005] = "x-mac-hebrew" -- Hebrew (Mac)
cp[10006] = "x-mac-greek" -- Greek (Mac)
cp[10007] = "x-mac-cyrillic" -- Cyrillic (Mac)
cp[10008] = "x-mac-chinesesimp" -- Chinese Simplified (Mac)
cp[10010] = "x-mac-romanian" -- Romanian (Mac)
cp[10017] = "x-mac-ukrainian" -- Ukrainian (Mac)
cp[10021] = "x-mac-thai" -- Thai (Mac)
cp[10029] = "x-mac-ce" -- Central European (Mac)
cp[10079] = "x-mac-icelandic" -- Icelandic (Mac)
cp[10081] = "x-mac-turkish" -- Turkish (Mac)
cp[10082] = "x-mac-croatian" -- Croatian (Mac)
cp[12000] = "utf-32" -- Unicode (UTF-32)
cp[12001] = "utf-32BE" -- Unicode (UTF-32 Big-Endian)
cp[20000] = "x-Chinese-CNS" -- Chinese Traditional (CNS)
cp[20001] = "x-cp20001" -- TCA Taiwan
cp[20002] = "x-Chinese-Eten" -- Chinese Traditional (Eten)
cp[20003] = "x-cp20003" -- IBM5550 Taiwan
cp[20004] = "x-cp20004" -- TeleText Taiwan
cp[20005] = "x-cp20005" -- Wang Taiwan
cp[20105] = "x-IA5" -- Western European (IA5)
cp[20106] = "x-IA5-German" -- German (IA5)
cp[20107] = "x-IA5-Swedish" -- Swedish (IA5)
cp[20108] = "x-IA5-Norwegian" -- Norwegian (IA5)
cp[20127] = "us-ascii" -- US-ASCII
cp[20261] = "x-cp20261" -- T.61
cp[20269] = "x-cp20269" -- ISO-6937
cp[20273] = "IBM273" -- IBM EBCDIC (Germany)
cp[20277] = "IBM277" -- IBM EBCDIC (Denmark-Norway)
cp[20278] = "IBM278" -- IBM EBCDIC (Finland-Sweden)
cp[20280] = "IBM280" -- IBM EBCDIC (Italy)
cp[20284] = "IBM284" -- IBM EBCDIC (Spain)
cp[20285] = "IBM285" -- IBM EBCDIC (UK)
cp[20290] = "IBM290" -- IBM EBCDIC (Japanese katakana)
cp[20297] = "IBM297" -- IBM EBCDIC (France)
cp[20420] = "IBM420" -- IBM EBCDIC (Arabic)
cp[20423] = "IBM423" -- IBM EBCDIC (Greek)
cp[20424] = "IBM424" -- IBM EBCDIC (Hebrew)
cp[20833] = "x-EBCDIC-KoreanExtended" -- IBM EBCDIC (Korean Extended)
cp[20838] = "IBM-Thai" -- IBM EBCDIC (Thai)
cp[20866] = "koi8-r" -- Cyrillic (KOI8-R)
cp[20871] = "IBM871" -- IBM EBCDIC (Icelandic)
cp[20880] = "IBM880" -- IBM EBCDIC (Cyrillic Russian)
cp[20905] = "IBM905" -- IBM EBCDIC (Turkish)
cp[20924] = "IBM00924" -- IBM Latin-1
cp[20932] = "EUC-JP" -- Japanese (JIS 0208-1990 and 0212-1990)
cp[20936] = "x-cp20936" -- Chinese Simplified (GB2312-80)
cp[20949] = "x-cp20949" -- Korean Wansung
cp[21025] = "cp1025" -- IBM EBCDIC (Cyrillic Serbian-Bulgarian)
cp[21866] = "koi8-u" -- Cyrillic (KOI8-U)
cp[28591] = "iso-8859-1" -- Western European (ISO)
cp[28592] = "iso-8859-2" -- Central European (ISO)
cp[28593] = "iso-8859-3" -- Latin 3 (ISO)
cp[28594] = "iso-8859-4" -- Baltic (ISO)
cp[28595] = "iso-8859-5" -- Cyrillic (ISO)
cp[28596] = "iso-8859-6" -- Arabic (ISO)
cp[28597] = "iso-8859-7" -- Greek (ISO)
cp[28598] = "iso-8859-8" -- Hebrew (ISO-Visual)
cp[28599] = "iso-8859-9" -- Turkish (ISO)
cp[28603] = "iso-8859-13" -- Estonian (ISO)
cp[28605] = "iso-8859-15" -- Latin 9 (ISO)
cp[29001] = "x-Europa" -- Europa
cp[38598] = "iso-8859-8-i" -- Hebrew (ISO-Logical)
cp[50220] = "iso-2022-jp" -- Japanese (JIS)
cp[50221] = "csISO2022JP" -- Japanese (JIS-Allow 1 byte Kana)
cp[50222] = "iso-2022-jp" -- Japanese (JIS-Allow 1 byte Kana - SO/SI)
cp[50225] = "iso-2022-kr" -- Korean (ISO)
cp[50227] = "x-cp50227" -- Chinese Simplified (ISO-2022)
cp[51932] = "euc-jp" -- Japanese (EUC)
cp[51936] = "EUC-CN" -- Chinese Simplified (EUC)
cp[51949] = "euc-kr" -- Korean (EUC)
cp[52936] = "hz-gb-2312" -- Chinese Simplified (HZ)
cp[54936] = "GB18030" -- Chinese Simplified (GB18030)
cp[57002] = "x-iscii-de" -- ISCII Devanagari
cp[57003] = "x-iscii-be" -- ISCII Bengali
cp[57004] = "x-iscii-ta" -- ISCII Tamil
cp[57005] = "x-iscii-te" -- ISCII Telugu
cp[57006] = "x-iscii-as" -- ISCII Assamese
cp[57007] = "x-iscii-or" -- ISCII Oriya
cp[57008] = "x-iscii-ka" -- ISCII Kannada
cp[57009] = "x-iscii-ma" -- ISCII Malayalam
cp[57010] = "x-iscii-gu" -- ISCII Gujarati
cp[57011] = "x-iscii-pa" -- ISCII Punjabi
cp[65000] = "utf-7" -- Unicode (UTF-7)
cp[65001] = "utf-8" -- Unicode (UTF-8)

flexprompt.settings.codepages = cp

local function code_page_module()
    local pipe = io.popen("2>nul chcp")
    if not pipe then
        return "", ""
    end
    local line = pipe:read("*l") or ""
    if line == "" then
        pipe:close()
        return "", ""
    end
    pipe:close()
    local s = line:match(".*: ([0-9]+)")
    if s then
	local cp = tonumber(s)
	local codepages = flexprompt.settings.codepages
	if codepages then
        s = codepages[s] or codepages[cp] or "CP"..cp
	end
	return s, "blue"
    else
	return "", ""
    end
end

flexprompt.add_module("cp", code_page_module)
