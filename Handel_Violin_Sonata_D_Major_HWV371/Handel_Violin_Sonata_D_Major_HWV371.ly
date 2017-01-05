\version "2.18.2"

#(set-default-paper-size "a4")

\header {
	title = \markup {\medium "Sonata a Violino Solo e Cembalo" }
	composer = "G. F. Handel"
	opus = "HWV 371"
	tagline = ""
}

{
\tempo \markup { \medium \italic "Afetuoso" }
\time 4/4
<<
	\set strictBeatBeaming = ##t
	\override TupletBracket.bracket-visibility = ##f
	\relative c'
	{ \clef "treble"
	\key d \major
	r8 d fis a e'2~ |
	e8 a, d fis b8. a16 g16. fis32 e16. d32 |
	cis16. b32 a8 r16 a' a16.\trill g64 a b16. cis,32 d16. a32 g'8. fis16 |
	fis4 r16 fis g16. a32 e16. fis32 g16. a32 d,16. fis32 g16. a32 |
	cis,8 e~ e16. d32 cis16 \grace b8 a16 \grace gis8 fis4 gis'8 \grace fis8 e16 \grace d8 cis16 |
	a4 b'8 g16 e cis8\trill e cis'4~ |
	cis8 a32. gis64( a32 b) cis4~ cis16. fis,32 fis16.\trill fis32 d'8. \grace cis8 b16 |
	gis16.\trill e32 b'8~ b16 e, d16.\trill cis32 d16. b'32 cis,16.\trill b32 cis16. a'32 b,16.\trill a32 |
	gis16 e d'8~ d16. e,32 b'16. d32 c16 a' fis e32 d c8 b16. a32 |
	a4 r4 r2 |
	R1 |
	r8 a, cis e b'2~ |
	b8 e, a cis fis8. e16 d16. cis32 b16. a32 |
	gis16. fis32 e8 gis'4~ gis8 b,~ b16 b' a16. gis32 |
	a8 cis, e4~ e16 g fis16. e32 cis'8. e,16 |
	d8 d'16. cis32 b4~ b16. a32 g fis e16 d8 cis16. b32 |
	b8 d16. cis32 cis8 e16. d32 d8. e64 fis g32 e8. fis16 |
	fis8. cis'16 d8 \tuplet 3/2 {cis16 b ais}
	}

	\new Staff
	{ \clef "bass"
	\key d \major
	d2~ d8 cis16. b,32 cis8 a, | fis4. d8 g a b g |
	a4 fis g8 fis e a | d a d' d cis cis' b b, |
	a,4 cis8 a d b e cis' | fis d' gis e' a cis' a e |
	fis a fis cis d d' b d | e8. fis16 gis8 a b e a d |
	e fis gis gis, a, d e e, | a, cis' a e fis a fis cis |
	d d' b gis e16. gis32 a16. d32 e8 e,8 | a,4 a4~ a8 gis 16. fis32 gis8 e8 |
	cis'4. a8 d e fis d | e gis b d cis gis eis cis |
	fis4 r8 cis ais,4 r8 ais | b fis g d e g fis fis, |
	b,4 r r8 b g g, | fis,4 r8 cis' d' ais b fis |
	g g, gis, gis a fis b cis' | d'4 r r8 a fis d |
	g4 r r8 g e g | a4 r r8 a fis a |
	b b, d b, e e' a cis' | d' d g b a fis b, cis |
	d g, a, a b2 | e a, \bar "|."
	}

	\figures {
	<_>2 <4 2>4 <6> | <7>4 <6> <_> <6>8 <6> |
	<_>4 <6> <_> 8 <6> <7> <_> | <_> 2 <6> 4 <6> |
	<_>4 <6> <_> <_+>8 <5\\> | <6>4 <6>8 <_+> <_>2 |
	<_> <7>8 <6> <_>4 | <_+>2 <6\\> |
	<_+>8 <6> <_>2. | <_>4. <6>8 <_>4. <6>8 |
	<_>4 <5> <7 _+> <4>8 <_+> | <_>2 <4 2>4 <6> |
	<7> <6> <_> <6> | <_+> <6\\> <_> <6>8 <_+> |
	<_>4. <_+>8 <7 5> <6> <_>4 | <_>4. <6>8 <_>4 <6 4>8 <5 _+> |
	<_>2 <_>4 <6>4 | <_+>4. <6\\>8 <6> <6> <_> <6> |
	<6>4 <6 5> <_> <6>8 <6 5> | <_>2 <_>8 <_! 6> <_>4 |
	<_>1 | <_> |
	<_>2. <7>4 | <_> <7> <_> <6>8 <6 5> |
	<_>4 <4>8 <3> <7>4 <6\\> | <_+>2 <_> |
	}

>>
}