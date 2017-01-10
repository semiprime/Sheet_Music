\version "2.18.2"
\language "english"

#(set-default-paper-size "a4")

\paper {
	top-margin = .8\cm
	bottom-margin = 0.8\cm
	max-systems-per-page = 6
	print-all-headers = ##t

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


% Global title
\header {
	title = "XV Inventions à 2"
	subtitle = "J. S. Bach"
	composer = " " % To make space below title
}


%%%%%%%%%%%%%%%%%%
%%  Inventio I  %%
%%%%%%%%%%%%%%%%%%

InvI_upst = \relative c' {
	\clef soprano
	\key c \major
	\time 4/4
	r16 c d e f d e c g'8 c b\prall c | d16 g, a b c a b g d'8 g f\prall g |
	e16 a g f e g f a g f e d c e d f | e d c b a c b d c b a g fs a g b |
	a8 d, c'8.\mordent d16 b a g fs e g fs a | g b a c b d c e d b32 c d16 g b,8\prall a16 g |
	g8 r r4 r16 g a b c a b g | fs8\prall r r4 r16 a b c d b c a |
	b8 r r4 r16 d c b a c b d | c8 r r4 r16 e d c b d cs e |
	d8 cs d e f a, b cs | d fs, gs a b c d4 ~ |
	d16 e, fs gs a fs gs e e' d c e d c b d | c a' gs b a e f d gs, f' e d c8 b16 a |
	a a' g f e g f a g2 ~ | g16 e f g a f g e f2 ~ |
	f16 g f e d f e g f2 ~ | f16 d e f g e f d e2 ~ |
	e16 c d e f d e c d e f g a f g e | f g a b c a b g c8 g e d16 c |
	c bf a g f a g bf a b! c e, d c' f, b | <c g e>1\fermata ||
	}

InvI_downst = \relative c {
	\clef bass
	\key c \major
	r2 r16 c d e f d e c | g'8 g, r4 r16 g' a b c16 a b g |
	c8 b c d e g, a b | c e, fs g a b c4 ~ |
	c16 d, e fs g e fs d g8 b, c d | e fs g e b8. c16 d8 d,8 |
	r16 g a b c a b g d'8 g fs g | a16 d, e fs g e fs d a'8 d c d |
	g,16 \clef alto g' f e d f e g f8 e f d | e16 a g f e g f a g8 f g e |
	f16 bf a g f a g bf a g f e d f e g | f e d c b d c e d c b a gs b a c |
	b8 e, d'8.\mordent e16 c b a g fs a gs b | a c b d c e d f e8 a, e' e, | 
	\clef bass a a, r4 \clef alto r16 e'' d c b d cs e | d2 ~ d16 a b c d b c a |
	b2 ~ b16 d c b a c b d | c2 ~ c16 g a bf c a bf g |
	a8 bf a g f d' c bf | a f' e d e16 \clef bass d, e f g e f d |
	e8 c d e f16 d e f g8 g, | c,1\fermata \bar "|."
	}

\score {
	\header {
		title = \markup {\medium "Inventio I" }
		opus = "BWV 772"
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		#(set-accidental-style 'forget)
		\override Script.padding = #0.55
		\InvI_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Script.padding = #0.2
		\InvI_downst
		}
	>>
}

\pageBreak

%%%%%%%%%%%%%%%%%%%
%%  Inventio II  %%
%%%%%%%%%%%%%%%%%%%

InvII_upst = \relative c'' {
	\clef soprano
	\key c \minor
	\time 4/4
	r8 c16 b c d ef g, af bf af f f' ef d c | b af' g f ef d c b c d c d d8.\trill c32 d |
	ef16 d c d ef f g8 g\prall f r f | f\prall ef r d ef af, af16 f bf f |
	g8 ef' ~ ef16 d ef bf d ef af g f ef d c | bf d g f ef d c bf af c f c d8. d16 |
	ef bf c bf g'4 ~ g16 bf, c bf af'4 ~ | af16 bf, ef d g f af g c bf af g f bf af bf |
	g bf af bf ef, g f g c, d ef f d ef f g | ef f g af bf af c bf af g f af d,4 ~ |
	d16 d g d ef c d bf c4 ~ c16 g' fs a | c, bf c8 ~ c16 fs e d bf'8. e,16 fs8. g16 |
	g8 g,16 fs g a bf d, ef16 f ef c c' bf a g |
	}

InvII_downst = \relative c' {
	\clef bass
	\key c \minor
	R1 | R1 |
	\clef alto r8 c16 b c d ef g, af bf af f f' ef d c | b af' g f ef d c b c d c d d8.\prall cf32 d |
	ef16 d c d ef f g8 g\prall f r f | f\prall ef r d ef af, ~ af16 f bf f |
	g8 ef' ~ ef16 d ef bf c ef af g f ef d c | bf ef g f ef d c bf af c f c d8.\prall d16 |
	ef bf c bf g'4 ~g16 bf, c bf af'4 ~ | af16 bf, ef d g f af g c bf af g f bf af bf |
	g8 ef,16 f g a bf d, ef f ef c c' bf a g | fs ef' d c bf a g fs g a g a af8.\prall g32 af |
	bf16 a g af bf c d8 d\prall c r c |
	}

\score {
	\header {
		title = \markup {\medium "Inventio II" }
		opus = "BWV 773"
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		#(set-accidental-style 'forget)
		\override Script.padding = #0.55
		\InvII_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Script.padding = #0.45
		\InvII_downst
		}
	>>
}
