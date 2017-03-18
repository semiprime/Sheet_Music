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
	title = \markup {\medium "Sonata" }
	composer = "J. S. Bach"
	opus = "BWV 1014"
	tagline = ##f
}


%%%%%%%%%%%%%%%%%%
%% 1st Movement %%
%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%
%% 2nd Movement %%
%%%%%%%%%%%%%%%%%%

mvtII_vln = \relative c''' {
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
	% \bar "|."
	}

mvtII_kbd_up = \relative c'' {
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
	% \bar "|."
	}

mvtII_kbd_dn = \relative c {
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
	% \bar "|."
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
			\mvtII_vln
		}

		\new PianoStaff <<
			\new Staff = "upper" \mvtII_kbd_up
			#(set-accidental-style 'forget)
			\new Staff = "lower" \mvtII_kbd_dn
			#(set-accidental-style 'forget)
		>>
	>>
}
