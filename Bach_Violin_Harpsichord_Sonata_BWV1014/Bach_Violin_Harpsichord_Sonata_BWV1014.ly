\version "2.18.2"
\language "english"

#(set-default-paper-size "a4")

\paper {
	top-margin = .8\cm
	bottom-margin = 0.8\cm
	%max-systems-per-page = 7

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
	title = \markup {\medium "Sonata I a Violino Solo e Cembalo Concertanto" }
	composer = "J. S. Bach"
	opus = "BWV 1014"
	tagline = ##f
}


%%%%%%%%%%%%%%%%%%
%% 1st Movement %%
%%%%%%%%%%%%%%%%%%

mvtI_vln = \relative c'' {
	\clef treble
	\key d \major
	\time 6/4
	R1. | R | R | R |
	fs ~ |
	fs2. ~ fs4 ~ fs16 g( a g fs e ds e32 cs) |
	b4 b'2 ~ b2. ~ |
	b2. ~ b4 ~ b16 cs d cs b a g a32 fs |
	e1. ~ |
	e2. ~ e16 d( cs d e d e fs32 g) fs8\trill g16 e |
	d4.\trill cs8 b16 as b8 b2 r4 |
	b'2. ~ b4. a8 gs4 |
	a1. ~ |
	a8 gs es fs d'4 ~ d8 cs b a gs fs |
	es4.\trill ds8 cs4 << cs2.\mordent ~ \\ s2. >> |
	<<{cs8 a' a gs gs fs fs2. ~} \\ {s8 cs cs b b a a2. ~}>> |
	<<{fs'8 b b a a gs gs b b es, es gs} \\ {a, d d cs cs b b d d gs, gs b}>> |
	<<{gs'8 b, b d d4 ~ d} \\ {bs8 es, es es es4 ~ es}>> cs'8 b a gs |
	a cs gs' es fs4 ~ fs8 b gs4.\prall fs8 |
	fs2. ~ fs2 r4 |
	<<{a2. ~ a8 g g fs fs g} \\ {c,2. ~ c8 b b a a b}>> |
	<<{g'2. ~ g2. ~} \\ {b,2. e2. ~}>> |
	<<{g8 fs fs e e g g fs fs e e d} \\ {e d d cs cs e e d d cs cs fs,}>> |
	<<{d'2. ~ d ~} \\ {fs,2. ~ fs ~}>> |
	<<{d'8 cs e d g fs e d cs e as, b} \\ {fs e g fs b a g fs e4 r}>> |
	as4. gs8 fs4 <<{fs2. ~} \\ s2.>> |
	<<{fs8 d' d cs cs b b2. ~} \\ {s8 fs fs e e d d2.}>> |
	<<{b'8 e e d d cs cs e e as, as cs} \\ {d,8 g g fs fs e e g g cs, cs e}>> |
	}

mvtI_kbd_up = \relative c'' {
	\clef treble
	\key d \major
	\time 4/4
	<<{fs2. ~ fs8 g g fs fs e} \\ {d2. ~ d8 e e d d cs}>> |
	<<{e2. ~ e8 fs fs e e d} \\ {cs2. ~ cs8 d d cs cs b}>> |
	<<{d2. ~ d8 b' b a a g} \\ {b,2. ~ b8 cs cs ds ds e}>> |
	<<{g fs fs e e d d cs cs b b as} \\ {e' d! d cs cs fs, fs e e d d cs}>> |
	<<{as' gs gs as as b b as as b b cs} \\ {cs, b b cs cs d d cs cs d d e}>> |
	<<{cs'2. b8 cs cs ds ds e} \\ {e,2. ds8 e e fs fs g}>> |
	<<{e'4. b8 d cs d e e fs fs g} \\ {g,4. e8 b' as b cs cs d d e}>> |
	<<{g2. ~ g8 fs fs gs gs as ~ } \\ {e2. ~ e8 b b e e cs}>> |
	<<{as'2. ~ as8 gs as b a b } \\ {cs,2. ~ cs8 b cs d cs d}>> |
	<<{cs'4. b8 a b a2\trill r4} \\ {e2. cs2 r4} >> |
	<<{<d fs b>8 fs fs e e d d2. ~} \\ {b8 d d as cs fs, fs4. gs8 fs g}>> |
	<<{d'2. ~ d8 cs cs b b a} \\ {es4 ~ es16 fs es fs fs8.^\trill es32 fs gs8 es es cs cs fs}>> |
	<<{a4 r r r r8 fs' e fs} \\ {fs,4. a8 gs a fs2. ~}>> |
	<<{d'4. cs8 fs4 ~ fs8 e d cs b a} \\ {fs4. a8 gs a b4 fs2}>> |
	<<{gs2. a4. cs8 fs es} \\ {r8 gs,, cs ds fs es fs2 ~ fs8 gs}>> |
	<<{fs'4 r r r8 fs fs e e d} \\ {a4 r r r8 a a cs cs fs,}>> |
	<<{d'4 fs8 es fs4 ~ fs d b} \\ {fs2 a4 b es, gs}>> |
	<<{gs4 b2 ~ b4 a8 gs cs4 ~} \\ {cs,4. gs'8 fs gs es2 r8 b'}>> |
	<<{cs8 fs es gs fs4 ~ fs16 es fs gs es4. fs8} \\ {a,4 b r8 d cs2 b4}>> |
	<<{fs'2. ~ fs8 a a g g fs} \\ {a,2. ~ a8 c c b b a }>> |
	<<{fs'4. fs8 e fs ds4 e8 fs ds e} \\ {a,4 fs2 ~ fs4 g a}>> |
	<<{e'4. g8 fs g e d cs2 ~} \\ {g2. ~ g4. e8 d e}>> |
	<<{cs'4 b cs as b cs} \\ {cs, d e cs d e}>> |
	<<{d' r r r r8 b' a b} \\ {fs,4. d'8 cs d b2. ~}>> |
	<<{g'4 e4. d8 cs b as b cs d} \\ {b4 r r cs,8 d e4 cs' ~}>> |
	<<{e4. d8 e cs fs4. fs8 e fs} \\ {cs8 b as2 b8 cs d4 as}>> |
	<<{d4 r r r8 b b a a g} \\ {b4 r r r8 d, d fs fs b,}>> |
	<<{g'4 b8 as b4 ~ b g e} \\ {b2 d4 e as, cs}>> |
	}

mvtI_kbd_dn = \relative c {
	\clef bass
	\key d \major
	\time 6/4
	b8 d fs b as b b,4 r r |
	cs8 e g b as b fs,4 r r |
	b8 b' b a a g g4 g, fs |
	e e' fs gs as b |
	e, r r d r r |
	as8 cs fs as gs as a,!4 r r |
	g8 b e g fs g fs,4 r r |
	e8 g b e d e d,4 r r |
	cs'8 e g b as b b,4 r r |
	as8 cs e g fs g fs,2 r4 |
	b2 r4 b8 d fs b a b |
	gs, b d gs fs gs es,4 r r |
	\clef tenor
	fs'8 a cs fs es fs d, fs a d cs d |
	\clef bass
	b,4 r r gs a b |
	cs8 es gs cs b cs a, cs fs a gs a |
	a2 cs4 d gs, b |
	es,8 fs gs b a b c,4 r es |
	fs d b cs2 c,4 |
	fs8 a cs fs e fs e,4 r r |
	ds8 fs b ds cs ds b,4 r r |
	ds8 fs b ds cs ds b,4 r r |
	e'8 g b e d e cs, e as cs b cs |
	as,4 r r fs r r |
	b8 d fs b a b g, b d g fs g |
	e,4 r r e'8 fs fs g g fs |
	fs as cs fs e fs d, fs b d cs d |
	b,4 r r r8 g' g fs fs e |
	e2 fs4 g cs, e |
	}

\score {
	\header {
	piece = \markup { \italic "Adagio" }
	}
	<<
		\new Staff {
			%\override Score.SpacingSpanner.strict-grace-spacing = ##t
			\set strictBeatBeaming = ##t
			\override Script.padding = #0.5
			#(set-accidental-style 'forget)
			\mvtI_vln
		}

		\new PianoStaff <<
			\new Staff = "upper" \mvtI_kbd_up
			#(set-accidental-style 'forget)
			\new Staff = "lower" \mvtI_kbd_dn
			#(set-accidental-style 'forget)
		>>
	>>
}

%%%%%%%%%%%%%%%%%%
%% 2nd Movement %%
%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%
%% 3rd Movement %%
%%%%%%%%%%%%%%%%%%

mvtIII_vln = \relative c''' {
	\clef treble
	\key d \major
	\time 4/4
	a1 ~ |
	a16 g b a g( fs) e( d) cs8 b16 a r8 e' |
	fs16( e) g( fs) r a g fs g( fs) b( a) r a d cs |
	d( cs32 b a16) g fs8 e16\prall d d( e fs gs) a( gs a b) |
	cs,8. b16 d( cs) b( a) e'2 ~ |
	e16 d fs( e) d( cs) b( a) gs8 fs16 e r8 b' |
	cs16( b) d( cs) r e( d cs) d( cs) fs( e) r e a( gs) |
	a gs32( fs e16) d cs8\prall b16( a) a4 r8 c ~ |
	c16 b( as b) e4 ~ e8. fs32 g fs16 e d e32 cs |
	d8 e\trill fs4 ~ fs16 e g( fs) b( as) cs( e,) |
	d8 \grace{e16 fs} g8 ~ g16 fs e d cs( b) d( cs) e( d) fs( e) |
	fs8. g16 d8 cs16 b b8 fs'16 g a( g) b( a) |
	r8 a16( b32 cs) b16( a) g( fs) g8 e16( fs) g( fs) a( g) |
	r8 g16( a32 b) a16 g fs g32( e) fs8 e d4 ~ |
	d16 cs b a gs fs es fs es8 b' gs'4 ~ |
	gs16 fs a( gs) b( a) gs( a) fs( es) fs( b,) a8 gs16 fs |
	fs8 cs' a'4 ~ a16 b,16 e( ds) fs( e) g( fs) |
	g2 ~ g16 a, d( cs) e( d) fs( e) |
	fs8. g32 a g16( fs) e( d) a'2 ~ |
	a16 g b a g fs e d cs8 b16 a r8 e' |
	fs16( e) g( fs) r a g( fs) g fs b( a) r a d cs |
	d cs32( b a16) g fs8 e16\trill d d8 a16( b) c( b) d( c) |
	r8 c16( d32 e) d16( c) b( a) b8 b16( cs!) d( cs) e( d) |
	r8 d16( e32 fs) e16( d) cs( b) cs( b) cs( d) e( d) fs( e) |
	r8 e16( fs32 g) fs16( e) d( cs) d cs( b a g fs e) fs |
	e8 d' g4 ~ g16 fs e d cs b a b |
	a8 g' e'4 ~ e16 d cs b a g fs g |
	fs( e) g( fs) e( d) cs( d) cs4 r8 a' |
	g16 fs b a fs8\trill e16 d d2\fermata \bar "|."
	}

mvtIII_kbd_up = \relative c'' {
	\clef treble
	\key d \major
	\time 4/4
	r16 d e fs g, e' fs, d' cs a cs e a d, cs g' |
	fs e g fs e a, g fs e cs' d e a, d g, cs |
	d( fs) b( a) g( fs) e( d) cs8\trill d16( cs) e( d) fs( e) |
	fs8. b16 a d, cs g' fs4 r |
	e2 ~ e16 e, gs b e a, gs d' |
	cs b d cs fs e d cs b gs a b e, a d, gs |
	a gs fs e d cs b a gs8 a16 g b a cs b |
	cs8. fs16 e a, gs d' cs e fs g a cs, ds b' |
	a g fs e r e' fs g fs e( d cs) b as b cs |
	fs, b cs d e, cs' d, b' as fs a cs fs e g8 ~ |
	g16 fs e d cs d as b as8 b16( as) cs( b) d( cs) |
	d e32 d cs d b16 as8. b16 b8 ds16( e) fs e g fs |
	r8 fs16( g32 a) g16 fs e ds e8 cs16( d!) e d fs e |
	r8 e16 fs32 g fs16 e d e32( cs) d16 cs b a gs fs es fs |
	es8 d' gs4 ~ gs16 fs es( fs32 gs) b,16 a b gs |
	a8 cs16 b d cs b cs gs b' a fs es8. fs16 |
	fs8 a!16 g fs e ds e ds4 r |
	r8 g16 fs( e) d cs( d) cs4 r |
	r16 a d cs b a g fs e a cs e a d, cs g' |
	fs e g fs b a g fs e cs d e a, d g, cs |
	d cs b a g fs e fs32 d cs8 d16( cs) e( d) fs( e) |
	fs8. b16 a d, cs g' fs e fs g a( g) b( a) |
	r8 a16( b32 c) b16 a g fs g8 gs16 a b a cs b |
	r8 b16( cs32 d) cs16 b a gs a8 e16 fs g( fs) a( g) |
	r8 g16( a32 b) a16 g fs e fs a b cs d4 ~ |
	d16 cs b a g fs e fs e8 b' g'4 ~ |
	g16 fs e d cs b a b a8 e'16 d e4 ~ |
	e16 a, d( cs) b a g fs e g a cs e g a cs, |
	d8. e16 cs8.\trill d16 <d a fs>2 \bar "|."
	}

mvtIII_kbd_dn = \relative c {
	\clef bass
	\key d \major
	\time 4/4
	d8 d' cs d a g fs e |
	d d' cs d a g fs e |
	d d' cs d a g fs e |
	d g a a, d, d' cs b |
	a a' gs a e d cs b |
	a a' gs a e d cs b |
	a a gs a e d' cs b |
	a d e e, a a' g fs |
	e g cs, e as, fs gs as |
	b b' as b fs e d cs |
	b b' as b fs e d cs |
	b e fs fs, b b' fs ds |
	b b' a b e, a e cs |
	a a' g a d, cs b a |
	gs fs es gs cs ds es cs |
	fs, fs' es fs d b cs cs, |
	fs fs' e! fs b, a g fs |
	e e' d e a, g fs e |
	d d'' cs d a g fs e |
	d d' cs d a g fs e |
	d d cs d a g' fs e |
	d g a a, d d a fs |
	d d' c d g, e' b gs |
	e e' d e a, a' e cs |
	a a' g a d, cs b d |
	g, fs e d cs e a b |
	cs d e fs g a b cs |
	d16 cs b a g fs e d g,4 r8 fs |
	b g a a d,2\fermata \bar "|."
	}

\score {
	\header {
	piece = \markup { \italic "Andanto" }
	opus = ##f
	}
	<<
		\new Staff {
			\override Score.SpacingSpanner.strict-grace-spacing = ##t
			\set strictBeatBeaming = ##t
			\override Script.padding = #0.5
			#(set-accidental-style 'forget)
			\mvtIII_vln
		}

		\new PianoStaff <<
			\new Staff = "upper" \mvtIII_kbd_up
			#(set-accidental-style 'forget)
			\new Staff = "lower" \mvtIII_kbd_dn
			#(set-accidental-style 'forget)
		>>
	>>
}
