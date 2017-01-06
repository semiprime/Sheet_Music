\version "2.18.2"
\language "english"

#(set-default-paper-size "a4")

\header {
	title = \markup {\medium "Inventio I" }
	composer = "J. S. Bach"
	opus = "BWV 772"
	tagline = ""
}


upst = \relative c' {
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

downst = \relative c {
	\clef bass
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
	\new PianoStaff <<
	\new Staff = "up" {
		#(set-accidental-style 'forget)
		\upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\downst
		}
	>>
}
