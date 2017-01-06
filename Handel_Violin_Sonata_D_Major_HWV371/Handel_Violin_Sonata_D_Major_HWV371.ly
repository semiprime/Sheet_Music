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
		\mvtI_vln

		\new Staff
		\mvtI_bass

		\new FiguredBass {
			\override FiguredBass.BassFigure #'font-size = #-1
			%\override FiguredBass.BassFigure #'font-series = #'normal
			\mvtI_figs
		}

		% Alternative figured bass
		%\mvtI_figs_alt
	>>
}
