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
 	indent = #0
	\override Staff.NoteHead.style = #'baroque
	\override Staff.Rest.style = #'classical
}


% Global title
\header {
	title = "Il Transilvano, Seconda Parte (1609)"
	subtitle = "Girolamo Diruta"
	composer = " " % To make space below title
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Ricercare del Settimo Tuono  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Ric_Settimo_I = {
	\key c \major
	\time 4/4 % Displayed time signature
	\override Staff.TimeSignature.style = #'neomensural
	\set Timing.measureLength = #(ly:make-moment 4/2) % Effective time sig
	g2 g4 g d'8 c d e d4. c8 |
	b a b c b4 a4 g2. a4 |
	b c d2 a1 |
	b1 r1 |
	d2 d4 d g8 f g a g4. f8 |
	e d e f e4 d g2. f8 e |
	d2 e r g |
	f8 e f g f4 e d8 c d e d4 c |
	b8 a b c b4 c d c8 b a2 |
	b4 g g g d'8 c d e d4. c8 |
	b a b c b4 a g2. a4 |
	b4 c d2 a1 |
	b r |
	d2 d4 d g8 f g a g4. f8 |
	e d e f e4 d g2. f8 e |
	d2 e r g |
	f8 e f g f4 e d8 c d e d4 c |
	b8 a b c b4 c d c8 b a2 |
	b1
	\override Staff.TimeSignature.style = #'single-digit
	\time 3/1 \bar ":|.|:"
	\set Timing.measureLength = #(ly:make-moment 6/1) % Effective time sig
	\set Timing.measurePosition = #(ly:make-moment 3/1) % Anacrusis
	b1. b2 a1 |
	b1. c2 d1 c1 e1. f2 |
	g\breve e1 e\breve d1 |
	c\breve b1 a\breve b1 ~ |
	b2 c d1 a b\longa*1/2
	\bar ":|."
	}

Ric_Settimo_II = {
	\key c \major
	\time 4/4 % Displayed time signature
	\override Staff.TimeSignature.style = #'neomensural
	\set Timing.measureLength = #(ly:make-moment 4/2) % Effective time sig
	r1 d2 d4 d |
	g8 f g a g4 f e8 d e f e4 d |
	g2 d4 e f8 e f g f4. e8 |
	d1 e2. f4 |
	g a b2 ~ b2 b |
	c2. b8 a g2. a4 |
	b2 c1 b2 |
	a1 b |
	R\breve |
	r1 d,2 d4 d |
	g8 f g a g4 f e8 d e f e4 d |
	g2 d4 e f8 e f g f4 e |
	d1 e2. f4 |
	g a b2 ~ b b |
	c2. b8 a g2. a4 |
	b2 c1 b2 |
	a1 b |
	R\breve |
	r1
	\override Staff.TimeSignature.style = #'single-digit
	\time 3/1 \bar ":|.|:"
	\set Timing.measureLength = #(ly:make-moment 6/1) % Effective time sig
	\set Timing.measurePosition = #(ly:make-moment 3/1) % Anacrusis
	g1. g2 fs1 |
	g1. e2 g1 g\breve a1 |
	b\breve c1 g\breve bf1 |
	a\breve g1 f1. e2 d1 |
	g\breve fs1 g\longa*1/2
	\bar ":|."
	}

Ric_Settimo_III = {
	\key c \major
	\time 4/4 % Displayed time signature
	\override Staff.TimeSignature.style = #'neomensural
	\set Timing.measureLength = #(ly:make-moment 4/2) % Effective time sig
	R\breve | R\breve |
	g2 g4 g d'8 c d e d4. c8 |
	b a b c b4 a g2. a4 |
	b c d2 r4 d4 d d |
	g8 f g a g4 f e8 d e f e4 d8 c |
	g'2. f8 e d2. e4 |
	f1 g2 g ~ |
	g4 d g1 f2 |
	g d r1 |
	R\breve |
	g,2 g4 g d'8 c d e d4 c |
	b8 a b c b4 a g2. a4 |
	b4 c d2 r4 d d d |
	g8 f g a g4 f e8 d e f e4 d8 c |
	g'2. f8 e d2. e4 |
	f1 g2 g ~ |
	g4 d g1 f2 |
	g1
	\override Staff.TimeSignature.style = #'single-digit
	\time 3/1 \bar ":|.|:"
	\set Timing.measureLength = #(ly:make-moment 6/1) % Effective time sig
	\set Timing.measurePosition = #(ly:make-moment 3/1) % Anacrusis
	d1. d2 d1 |
	d1. c2 b1 e1. d2 c1 |
	d\breve e1 e1. f2 g1 |
	e\breve e1 c\breve b1 |
	g a d d\longa*1/2
	\bar ":|."
	}

Ric_Settimo_IV = {
	\key c \major
	\time 4/4 % Displayed time signature
	\override Staff.TimeSignature.style = #'neomensural
	\set Timing.measureLength = #(ly:make-moment 4/2) % Effective time sig
	R\breve | R\breve |
	r1 d2 d4 d |
	g8 f g a g4 f e8 d e f e4 d |
	g1 g2 g |
	c,2. d4 e2. f4 |
	g2 c, g' g4 g |
	d'8 c d e d4 c b8 a b c b4 a |
	g2. a4 b c d2 |
	g,1 r |
	R\breve |
	r1 d2 d4 d |
	g8 f g a g4 f e8 d e f e4 d |
	g1 g2 g |
	c,2. d4 e2. f4 |
	g2 c, g' g4 g |
	d'8 c d e d4 c b8 a b c b4 a |
	g2. a4 b c d2 |
	g,1
	\override Staff.TimeSignature.style = #'single-digit
	\time 3/1 \bar ":|.|:"
	\set Timing.measureLength = #(ly:make-moment 6/1) % Effective time sig
	\set Timing.measurePosition = #(ly:make-moment 3/1) % Anacrusis
	g1. g2 d1 |
	g1. a2 b1 c1. b2 a1 |
	g\breve c1 c\breve g1 |
	a\breve e1 g\breve g1 |
	e d\breve g\longa*1/2
	\bar ":|."
	}


%
% Open score (with original clefs)
%

\score {
	\header {
		title = \markup {\medium "Ricercare del Settimo Tuono" }
		composer = ##f
		subtitle = ##f
	}
	<<
		\relative c'' {
			\clef treble
			\Ric_Settimo_I
			}

		\new Staff {
			\relative c' {
				\clef mezzosoprano
				\Ric_Settimo_II
				}
		}

		\new Staff {
			\relative c' {
				\clef alto
				\Ric_Settimo_III
				}
		}

		\new Staff {
			\relative c {
				\clef tenor
				\Ric_Settimo_IV
				}
		}
	>>
}

\pageBreak

%
% Parts (in original clefs)
%

\score {
	\header {
		title = \markup {\medium "Ricercare del Settimo Tuono" }
		composer = ##f
		subtitle = ##f
	}
	\relative c'' {
		\clef treble
		\Ric_Settimo_I
		}
}

\pageBreak

\score {
	\header {
		title = \markup {\medium "Ricercare del Settimo Tuono" }
		composer = ##f
		subtitle = ##f
	}
	\relative c' {
		\clef mezzosoprano
		\Ric_Settimo_II
		}
}

\pageBreak

\score {
	\header {
		title = \markup {\medium "Ricercare del Settimo Tuono" }
		composer = ##f
		subtitle = ##f
	}
	\relative c' {
		\clef alto
		\Ric_Settimo_III
		}
}

\pageBreak

\score {
	\header {
		title = \markup {\medium "Ricercare del Settimo Tuono" }
		composer = ##f
		subtitle = ##f
	}
	\relative c {
		\clef tenor
		\Ric_Settimo_IV
		}
}

\pageBreak

%
% Keyboard score
%

\score {
	\header {
		title = \markup {\medium "Ricercare del Settimo Tuono" }
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		\clef treble
		<<
		\relative c'' {
			\Ric_Settimo_I
			}
		\\
		\relative c' {
			\Ric_Settimo_II
			}
		>>
		}
	\new Staff = "down" {
		\clef bass
		<<
		\relative c' {
			\Ric_Settimo_III
			}
		\\
		\relative c {
			\Ric_Settimo_IV
			}
		>>
		}
	>>
}
