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
	\clef "soprano"
	\key c \major
	\time 4/4
	r16 c d e f d e c g'8 c b c | d16 g, a b c a b g d'8 g f g |
	e16 a g f e g f a g f e d c e d f | e d c b a c b d c b a g fs a g b
	||
	}

downst = \relative c {
	\clef bass
	r2 r16 c d e f d e c | g'8 g, r4 r16 g' a b c16 a b g |
	c8 b c d e g, a b | c e, fs g a b c4
	||
	}

\score {
	\new PianoStaff <<
	\new Staff = "up" \upst
	\new Staff = "down" \downst		
	>>
}
