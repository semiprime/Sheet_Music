\version "2.18.2"
\language "english"

#(set-default-paper-size "a4")

\paper {
	top-margin = .8\cm
	bottom-margin = 0.8\cm
	max-systems-per-page = 7

	% Page numbers bottom, centered
	% From Lilypond Notation Reference section 3.2.2 Custom titles headers and footers
	print-page-number = ##t
	print-first-page-number = ##t
	oddHeaderMarkup = \markup \null
	evenHeaderMarkup = \markup \null
	oddFooterMarkup = \markup {
		\fill-line {
			\on-the-fly \print-page-number-check-first
			\fromproperty #'page:page-number-string
		}
	}
	evenFooterMarkup = \oddFooterMarkup
	}

\layout {
	indent = #0
}

\header {
	title = \markup {\medium "Sonata a Violino Solo e Cembalo" }
	composer = "G. F. Handel"
	opus = "HWV 371"
	tagline = ##f
}


%%%%%%%%%%%%%%%%%%
%% 1st Movement %%
%%%%%%%%%%%%%%%%%%

mvtI_vln = \relative c' {
	\clef treble
	\key d \major
	\time 4/4
	r8 d fs a e'2~ |
	e8 a, d fs b8. a16 g16. fs32 e16. d32 |
	cs16. b32 a8 r16 a' a16.\trill g64 a b16. cs,32 d16. a32 g'8. fs16 |
	fs4 r16 fs g16. a32 e16. fs32 g16. a32 d,16. fs32 g16. a32 |
	cs,8 e~ e16. d32 cs16 \grace b8 a16 \grace gs8 fs4 gs'8 \grace fs8 e16 \grace d8 cs16 |
	a4 b'8 g16 e cs8\trill e cs'4~ |
	cs8 a32. gs64( a32 b) cs4~ cs16. fs,32 fs16.\trill fs32 d'8. \grace cs8 b16 |
	gs16.\trill e32 b'8~ b16 e, d16.\trill cs32 d16. b'32 cs,16.\trill b32 cs16. a'32 b,16.\trill a32 |
	gs16 e d'8~ d16. e,32 b'16. d32 c16 a' fs e32 d c8 b16. a32 |
	a4 r4 r2 |
	R1 |
	r8 a, cs e b'2~ |
	b8 e, a cs fs8. e16 d16. cs32 b16. a32 |
	gs16. fs32 e8 gs'4~ gs8 b,~ b16 b' a16. gs32 |
	a8 cs, e4~ e16 g fs16. e32 cs'8. e,16 |
	d8 d'16. cs32 b4~ b16. a32 g fs e16 d8 cs16. b32 |
	b8 d16. cs32 cs8 e16. d32 d8. e64 fs g32 e8. fs16 |
	fs8. cs'16 d8 \tuplet 3/2 {cs16 b as} b8 fs~ fs ds16. e32 |
	e8. b'16 d,!8. cs16 cs8. a'16 g8. fs16 |
	fs8 d, fs a c4~ c16 a' fs d |
	b8 g b d b'8. a16 g16. fs32 e16. d32 |
	cs8 a cs e cs'8. b16 a16. g32 fs16. e32 |
	d16. cs32 d8 r d g4. fs16 e |
	fs4. e16 d cs8 d r g, |
	fs8. e16 e8. d16 d8. a'16 gs b d8 |
	r16 b' cs16. d32 << {gs,8. a16 a2} \\ {d,4 cs2}>> ||
	}

mvtI_bass = {
	\clef bass
	\key d \major
	d2~ d8 cs16. b,32 cs8 a, | fs4. d8 g a b g |
	a4 fs g8 fs e a | d a d' d cs cs' b b, |
	a,4 cs8 a d b e cs' | fs d' gs e' a cs' a e |
	fs a fs cs d d' b d | e8. fs16 gs8 a b e a d |
	e fs gs gs, a, d e e, | a, cs' a e fs a fs cs |
	d d' b gs e16. gs32 a16. d32 e8 e,8 | a,4 a4~ a8 gs 16. fs32 gs8 e8 |
	cs'4. a8 d e fs d | e gs b d cs gs es cs |
	fs4 r8 cs as,4 r8 as | b fs g d e g fs fs, |
	b,4 r r8 b g g, | fs,4 r8 cs' d' as b fs |
	g g, gs, gs a fs b cs' | d'4 r r8 a fs d |
	g4 r r8 g e g | a4 r r8 a fs a |
	b b, d b, e e' a cs' | d' d g b a fs b, cs |
	d g, a, a b2 | e a, \bar "|."
	}

mvtI_figs = \figuremode {
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

% Alternative figured bass markup.
% Nicer font, but can't do slashes and source hard to read
mvtI_figs_alt = \figures {
	<_>2 <\markup {\medium \small 4} \markup {\medium \small 2}>4 <\markup {\medium \small 6}> | <\markup {\medium \small 7}>4 <\markup {\medium \small 6}> <_> <\markup {\medium \small 6}>8 <\markup {\medium \small 6}> |
	<_>4 <\markup {\medium \small 6}> <_> 8 <\markup {\medium \small 6}> <\markup {\medium \small 7}> <_> | <_> 2 <\markup {\medium \small 6}> 4 <\markup {\medium \small 6}> |
	<_>4 <\markup {\medium \small 6}> <_> <_+>8 <\markup {\medium \small 5+}> | <\markup {\medium \small 6}>4 <\markup {\medium \small 6}>8 <_+> <_>2 |
	<_> <\markup {\medium \small 7}>8 <\markup {\medium \small 6}> <_>4 | <_+>2 <\markup {\medium \small 6+}> |
	<_+>8 <\markup {\medium \small 6}> <_>2. | <_>4. <\markup {\medium \small 6}>8 <_>4. <\markup {\medium \small 6}>8 |
	<_>4 <\markup {\medium \small 5}> <\markup {\medium \small 7} _+> <\markup {\medium \small 4}>8 <_+> | <_>2 <\markup {\medium \small 4} \markup {\medium \small 2}>4 <\markup {\medium \small 6}> |
	<\markup {\medium \small 7}> <\markup {\medium \small 6}> <_> <\markup {\medium \small 6}> | <_+> <\markup {\medium \small 6+}> <_> <\markup {\medium \small 6}>8 <_+> |
	<_>4. <_+>8 <\markup {\medium \small 7} \markup {\medium \small 5}> <\markup {\medium \small 6}> <_>4 | <_>4. <\markup {\medium \small 6}>8 <_>4 <\markup {\medium \small 6} \markup {\medium \small 4}>8 <\markup {\medium \small 5} _+> |
	<_>2 <_>4 <\markup {\medium \small 6}>4 | <_+>4. <\markup {\medium \small 6+}>8 <\markup {\medium \small 6}> <\markup {\medium \small 6}> <_> <\markup {\medium \small 6}> |
	<\markup {\medium \small 6}>4 <\markup {\medium \small 6} \markup {\medium \small 5}> <_> <\markup {\medium \small 6}>8 <\markup {\medium \small 6} \markup {\medium \small 5}> | <_>2 <_>8 <_! \markup {\medium \small 6}> <_>4 |
	<_>1 | <_> |
	<_>2. <\markup {\medium \small 7}>4 | <_> <\markup {\medium \small 7}> <_> <\markup {\medium \small 6}>8 <\markup {\medium \small 6} \markup {\medium \small 5}> |
	<_>4 <\markup {\medium \small 4}>8 <\markup {\medium \small 3}> <\markup {\medium \small 7}>4 <\markup {\medium \small 6+}> | <_+>2 <_> |
	}


\score {
	\header {
	piece = \markup { \italic "Afetuoso" }
	}
	<<
		\set strictBeatBeaming = ##t
		\override TupletBracket.bracket-visibility = ##f
		\override Script.padding = #0.5
		#(set-accidental-style 'forget)
		\mvtI_vln

		\new Staff {
			#(set-accidental-style 'forget)
			\mvtI_bass
		}

		\new FiguredBass {
			\override FiguredBass.BassFigure #'font-size = #-1
			%\override FiguredBass.BassFigure #'font-series = #'normal
			\mvtI_figs
		}

		% Alternative figured bass
		%\mvtI_figs_alt
	>>
}


%%%%%%%%%%%%%%%%%%
%% 2nd Movement %%
%%%%%%%%%%%%%%%%%%

mvtII_vln = \relative c''' {
	\clef treble
	\key d \major
	\time 4/4
	a2 fs8 d fs d | e a, e' a, d e16 fs g8 g |
	g fs16 e fs8 g16 a b8 b b8. a32 b | cs8 a d d, g e a g |
	fs a fs d r4 a' ~ | a gs fs2 |
	e4 r8 e a,4 d | d cs b2 |
	a4 r r d' ~ | d cs b2 |
	a4 r8 a d,4 g~ | g fs e2 |
	d16 a' fs a d, a' fs a cs, a' e a cs, a' e a | d, a' fs a d, a' fs a cs, a' e a cs, a' e a |
	b, fs' d fs b, fs' d fs a, fs' cs fs a, fs' cs fs | g, d' b d g, d' b d fs, d' a d fs, d' a d |
	fs,8 d' fs d a'4 a, | r8 d fs d a'4 a, |
	r8 e' g e b'4 d, | r8 g, b g d'4 d, |
	d'16 a d fs e g fs e fs d fs a cs, e d cs | d a d fs e g fs e fs d fs a g b a g |
	a cs b a b d cs b cs8. a16 gs8. gs16 | a e, a cs b d cs b cs a cs e d fs e d |
	e cs e a fs a gs fs gs e a e b' e, cs' e, | gs8 a b cs gs e r4 |
	d2 cs8 a cs a | b e, b' e, a b16 cs d8 d |
	d cs16 b cs8 d16 e fs8 fs fs e16 fs | gs8 e a a, d a gs d' |
	cs16 e d e cs d b cs a e' fs gs a e b' e, | cs'4 a fs r |
	r16 a g a fs g e fs d a b cs d a e' a, | fs'4 d b r |
	r16 d' c d b cs a b g d e fs g b a g | fs a g a fs g e fs g d b d g, d' b d |
	fs, c' a cs fs, c' a cs b8 d, e e' | fs d r d' g,4 c ~ |
	c b a2 | g16 g, b g d' g, b g fs' a, d a fs' a, d a |
	a' d, fs d a' d, fs d d'8 fs, g4 | r8 e fs4 r8 d e4 |
	r8 cs d b c4 r8 as | b g'16 fs e g fs e as fs gs as b e, cs' fs, |
	d' fs, d fs b, fs' d fs b e, g e b' e, g e | cs' a, cs a e' a, cs a a' d, fs d a' d, fs d |
	b' g, b g d' g, b g g' cs, e cs g' cs, e cs | as'8 fs as fs cs'4 as8 fs |
	b4. cs16 d e,4. cs'8 | d16 cs b as b8 e, d4 cs8. b16 |
	b fs' e fs d e cs d b d cs b a b g a | fs8 d fs d a'2 |
	g8 e g e b'2 | a8 fs a fs d'2 |
	gs,16 d' b d g, d' b d e b' gs b e, b' gs b | a, e' cs e a, e' cs e r4 r |
	a2 fs8 d fs d | e a, e' a, d e16 fs g8 g |
	g fs16 e fs8 g16 a b8 b b8. a32 b | cs16 e, a e cs' e, a e d' a, b cs d e fs g |
	fs8 a fs d cs e cs a | d b d fs a fs d fs, |
	g16 d e fs g a b cs d4 r | d16 a d fs e g fs e fs d fs a cs, e d cs |
	d a d fs e8 fs16 g cs, e, a cs b d cs b | cs a cs e d fs e d e cs e g fs a g fs |
	g d cs b cs g' fs e fs d, fs a d cs b a | cs e cs e d fs e g fs d, fs a d cs b a |
	b d cs e d fs e g fs4 r8 a | b,4 r8 b' cs,4 r8 a' |
	d,4 r8 d g16 e b' a g fs e d | cs a cs e g, b a g fs d fs a d fs e d |
	cs a cs e g b a g fs a g b a fs e d | cs e d fs e g fs e d8 d g4 ~ |
	g8 a fs e fs4 e8. d16 | d4 r8 a' b b b8. a32 b |
	cs8 a d g, fs4 e8. d16 | d1 \bar "|."
	}

mvtII_bass = \relative c {
	\clef bass
	\key d \major
	r2 r4 d' ~ | d cs b2 |
	r4 r8 a8 d,4 g4 ~ | g fs e2 |
	<< \stemDown d2 \\ d'2 >> cs8 a cs a | b e, b' e, a b16 cs d8 d |
	d cs16 b cs8 d16 e e8 e, fs8. e32 fs | gs8 e b' a, d b e d |
	<< a'2 \\ {cs,8 a cs a} >> fs' d fs d | e a, e' a, d e16 fs g8 g |
	g fs16 e fs8 g16 a b8 b b8. a32 b | cs8 a d d, g e a g |
	fs d fs d a'4 a, | r8 d fs d a'4 a, |
	r8 b d b fs'4 fs, | r8 g' b g d'4 d, |
	d16 a' fs a d, a' fs a cs, a' e a cs, a' e a | d, a' fs a d, a' fs a cs, a' e a cs, a' e a |
	e b' g b e, b' g b b, g' d g b, b' g b | g d' b d g, d' b d fs, d' a d fs, d' a d |
	fs,8 d cs' a g16 d g b a cs b a | b8 b,16 g' fs a g fs g8 d16 fs e g fs e |
	fs8. fs16 gs8 e a16 e a cs b d cs b | cs8. a16 gs8. gs16 a e a cs b d cs a |
	cs8. cs,16 d fs e d e8 cs' gs a | b16 e, cs' e, gs e a e b' e, gs b gs e g b |
	e, b' gs b e, b' gs b a e' cs e a, e' cs e | gs, e g b g e g b cs,8 a' fs b |
	e,4 e' ~ e8 a, d4 ~ | d cs b2 |
	a4 r r2 | r16 a g a fs g e fs d a b cs d a e' a, |
	fs'4 a fs r | r16 d' c d b cs a b g d e fs g d a' d, |
	b'4 g r2 | d' b8 g b g |
	a d, a' d, g a16 b c8 cs | c b16 a b8 c16 d e8 e, e8. d32 e |
	fs8 d g b c a d cs | b g b g d'4 cs, |
	r8 d fs d b'4 b,8 b' | a g a fs g fs g e |
	fs e fs d e d e fs | g e cs! e fs 4 r |
	b2 g8 e g e | a2 fs8 d fs d |
	g2 e8 cs e cs | fs16 cs' as cs fs, cs' as cs e, cs' as cs e, cs' as cs |
	d, b' fs b d, b' fs b cs, b' e, b' cs, as' e a | b,8 cs d e fs e fs fs, |
	b4 r r2 | d2 cs8 a cs a |
	e'2 d8 b d b | fs'2 fs8 d fs d |
	b'2 gs8 e g e | cs'2 a16 e' cs e a, e' cs e |
	fs, cs' a cs fs, cs' a cs d,4 d' ~ | d cs b2 |
	a4 r8 a d,4 g | a, g' fs8 e fs d |
	d16 a b cs d e fs g a e cs e a, a' fs a | b, fs' d fs b, fs' d fs fs, d' a d fs, d' a d |
	b8 d b g fs'16 d e fs g a b cs | d4 r d,16 a d fs e g fs e |
	fs d fs a g b a g a4 r | a16 e a cs b d cs b cs a cs e d fs, e d |
	e8 g a a, d4 r8 fs | g a b cs d4 r8 fs, |
	g a b cs d d,16 fs e g fs a | g b e, g fs a g b a cs fs, a g b a cs |
	b a g fs e d cs b e4 r8 g | a4 r8 a, a'4 r8 a, |
	a'4 r8 cs, d16 fs e g fs a g b | a cs b d cs8 a b b b8. a32 b |
	cs8 a d g, a4 a,8 a' | b a16 g fs8 fs, g d' g e |
	a g fs g a4 a, | d1 \bar "|."
	}

mvtII_figs = \figuremode {
	<_>1 | <_>2 <7>4 <6> |
	<7>8 <6> <_>4 <6> <_> | <4 2> <6> <7> <6> |
	<_>2 <6> | <7>4 <6\\> <6> <_> |
	<4 2> <_> <7> <6> | <\markup{?}> <_> <\markup{?}> <_+> |
	<_>2 <6>2 | <7>4 <6> <6> <_> |
	<4 2> <_> <7> <6> | <6 5> <_> <\markup{?}> <_> |
	<_>1 | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <6> |
	<7 _+>4 <6> <4 2> <6> | <4 2> <6> <7> <6\\> |
	<_>1 | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <7>4 <6> <7> <6> |
	<7> <6> <6\\>4. <_+>8 | <_>1 |
	<_>1 | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_>4 <4 2> <_>2 |
	<_>1 | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_> |
	<_> | <_>2 <6 4> |
	<_>1 | <_> |
	<_> | <_> |
	<_> | <7>2 <8>2 |
	}


\score {
	\header {
	piece = \markup { \italic "Allegro" }
	opus = ##f
	}
	<<
		\set strictBeatBeaming = ##t
		\override TupletBracket.bracket-visibility = ##f
		\override Script.padding = #0.5
		#(set-accidental-style 'forget)
		\mvtII_vln

		\new Staff {
			#(set-accidental-style 'forget)
			\mvtII_bass
		}

		\new FiguredBass {
			\override FiguredBass.BassFigure #'font-size = #-1
			%\override FiguredBass.BassFigure #'font-series = #'normal
			\mvtII_figs
			}
	>>
}
