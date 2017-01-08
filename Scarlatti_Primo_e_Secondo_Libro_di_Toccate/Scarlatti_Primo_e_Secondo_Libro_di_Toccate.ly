\version "2.18.2"
\language "english"

#(set-default-paper-size "a4")

\paper {
	top-margin = .8\cm
	bottom-margin = 0.8\cm
	max-systems-per-page = 7
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
 	indent = #5
}


% Global title
\header {
	title = "Primo e Secondo Libro di Toccate"
	subtitle = "Alessandro Scarlatti"
	composer = " " % To make space below title
}


I_upst = \relative c' {
	\clef soprano
	\key c \major
	\time 4/4
	r8 d-1 g-2 b-4 d-5 g,-1 b-2 d-3 | g-5 b,-1 d-2 g-4 b-5 g-4 d-2 b-1 |
	g'-5 d-3 b-2 g-1 d'-5 b-4 g-2 d-1 | g4-4 r r2 |
	R1 | r16 c,-1 d-2 e-3 f-4 g-3 a-4 b-3 c-5 g-1 a-2 b-4 c-3 d-4 e-3 f-4 |
	g-5 f-4 e-3 d-2 c-1 b-3 a-2 g-1 c-5 b-4 a-3 g-2 f-1 e-3 d-2 c-1 | g'4-5 r r2 |
	r2 r16 g-2 a-3 b-4 c-1 a b c | d b c d e c d e f d e f g e f g |
	a f g a b g a b c g-4 e-2 c-1 g'-5 e-4 c-2 g-1 | c-4 g-3 e-2 c-1 c'8-5 c,-1 r2 |
	R1 | R1 |
	r16 c'-3 d-4 b-2 c-4 g-1 d'-4 g,-1 e'-4 c-2 d-4 f,-1 e'-5 g,-1 f'-5 g,-1 | g'-5 g,-1 f'-4 d-2 e-4 c-2 d-4 g,-1 g'-5 g,-1 f'-4 d-2 e-4 c-2 d-3 a-1 |
	b-4 g-2 a-4 d,-1 d'-5 d,-1 c'-4 a-2 b-4 g-2 a-4 fs-2 g-4 d-1 a'-4 d,-1 | b'-5 d,-1 c'-4 a-2 d-4 g,-2 e'-3 fs-4 g-5 fs-4 e-3 d-2 c-1 b-3 a-2 g-1 |
	d'-5 d,-1 e-2 fs-3 g-4 a-3 b-4 c-3 d-5 c-4 b-3 a-2 g-1 fs-3 e-2 d-1 | d'4-4 r r2 |
	R1 | r2 d8-4 c-3 b-2 g-1 |
	}

I_downst = \relative c {
	\clef bass
	\key c \major
	R1 | R1 |
	R1 | r8 g-4 b-3 d-2 g-1 d-5 g-3 b-2 |
	d-1 b-2 g-3 d-5 g-1 d-2 b-3 g-5 | c4 r r2 |
	R1 | r16 g-5 a-4 b-3 c-2 d-1 e-3 f-2 g-1 c,-5 d-4 e-3 f-2 g-1 a-3 b-2 |
	c-1 b-2 a-3 g-4 f-3 e-4 d-3 c-5 g'4-1 r | R1 |
	R1 | r4 r16 c,-4 d-3 e-2 f-1 d e f g e f g |
	a f g a b g a b c a b c d b c d | e-1 c-2 g-4 e-5 c'-1 g-2 e-4 c-5 g'-1 e-2 c-3 g-5 c8-1 c,-5 |
	R1 | r2 r4 c''8 fs, |
	g fs b fs g d b' fs | g4 r r2 |
	R1 | r16 g-3 a-2 fs-4 g-1 d-4 a'-1 d,-4 b'-2 g-4 a-1 d,-4 b'-1 d,-5 c'-1 d,-5 |
	d'-1 d,-5 c'-2 a-4 b-2 g-4 a-2 d,-5 g-1 fs-2 e-3 d-4 c-3 b-4 a-3 g-4 | g'-1 g,-5 a-4 b-3 c-2 d-1 e-3 fs-2 g-1 d-4 e-3 fs-2 g-1 a-3 b-2 c-1 |
	}

\score {
	\header {
		title = ##f
		opus = ##f
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		\override Staff.Rest.style = #'classical
		#(set-accidental-style 'forget)
		\I_upst
		}
	\new Staff = "down" {
		\override Staff.Rest.style = #'classical
		#(set-accidental-style 'forget)
		\I_downst
		}
	>>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%II_upst = \relative c'' {
%	\clef soprano
%	\key c \major
%	\time 3/4
%	r1
%	}
%
%II_downst = \relative c {
%	\clef bass
%	\key c \major
%	r1
%	}
%
%\score {
%	\header {
%		title = ##f
%		opus = ##f
%		composer = ##f
%		subtitle = ##f
%	}
%	\new PianoStaff <<
%	\new Staff = "up" {
%		\override Staff.Rest.style = #'classical
%		#(set-accidental-style 'forget)
%		\II_upst
%		}
%	\new Staff = "down" {
%		\override Staff.Rest.style = #'classical
%		#(set-accidental-style 'forget)
%		\II_downst
%		}
%	>>
%}
