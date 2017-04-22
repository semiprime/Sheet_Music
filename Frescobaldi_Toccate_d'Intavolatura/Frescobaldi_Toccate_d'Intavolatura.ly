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
}


% Global title
\header {
	title = "Toccate d'Intavolatura di Cembalo et Organo (1637)"
	subtitle = "Girolamo Frescobaldi"
	composer = " " % To make space below title
}


%%%%%%%%%%%%%%%%%%%%%%
%%  Corrente Prima  %%
%%%%%%%%%%%%%%%%%%%%%%

CorrI_upst = \relative c'' {
	\clef treble
	\time 3/4
	r2 a4 | a4. \autoBeamOff g8 f g \autoBeamOn |
	e4. d8 <<e4 \\ cs>>| \override Stem.direction=#UP f8 g a b c4 |
	d e f \revert Stem.directon | <<{bf,2 a4} \\ {d, e f}>> |
	<< g2. \\ e>> | << {g4 a} \\ e2>> f4 |
	<<e2 \\ cs>> d4 | e8 f g f <<e4 \\cs >> |
	d2 \bar ":|.|:" a'4 | a2 b4 |
	c4. \autoBeamOff b8 c d \autoBeamOn | b4. a8 <<b4 \\ gs>> |
	a8 g a b c4 | d e f |
	<<{e2 e4} \\ {r4 g, ~ g}>> | <<{d'2 e4} \\ {g,2 ~ g4}>> |
	<<{c2 c4} \\ {e,2 fs4}>> | <<{b2 s4} \\ {g4 a b}>> |
	<<{a2 a4} \\ {f2 f4}>> | g2 a4 |
	<<{f2 g4} \\ {d2 s4}>> | <<{r4 a' b} \\ {c,2 s4}>> |
	cs'4 a d | e8 f g f <<e4 \\ cs>> |
	<<d1*3/4 a fs>>
	\bar ":|."
	}

CorrI_downst = \relative c' {
	\clef bass
	R2. | << {r4 d ~ d } \\ {s2 d,4}>> |
	<<cs'2 \\ a>> a,4 | <<a'2 \\ f d>> <<a'4 \\ e c>> |
	<<f2 \\ d bf>> <<f'4 \\ a,>> | g2 f4 |
	c'2 c,4 | <<c''2 \\ c,>> d4 |
	<<{r a'4 f} \\ {a,2 bf4}>> | <<g'2 \\ g,>> <<a'4 \\ e \\ \override Stem.direction=#DOWN a,\revert Stem.directon >> |
	<<{d2 ~ d4} \\ {d,2 ~ d4}>> | r4 d''2 |
	<<{e2 fs4} \\ {r4 a, ~ a}>> | <<gs'2 \\ e>> e,4 |
	<<c'2 \\ a f>> <<c'4 ~ \\ g e>> | <<c'2 \\ d, ~>> <<b'4 \\ d,>> |
	<<c'2 \\ g c,>> <<c'4 ~ \\ r>> | <<{c4 b ~ b} \\ {g2 g4}>> |
	<<{a2 a4} \\ {r4 a, ~ a}>> | <<{e'2 ~ e4} \\ {r2 e,4}>> |
	<<{r4 f' ~ f ~} \\ {f,2 f4}>> | <<{f'4 e ~ e} \\ {c2 c4}>> |
	<<{d2 s4} \\ {r4 d, e}>> | <<f'2 ~ \\ c f,>> <<f'4 \\ g,>> |
	<<a'2 \\ e a,>> <<f'4 \\ bf,>> | <<g'2 \\ g,>> <<a'4 \\ e a,>> |
	<<d1*3/4 d,>>
	}


\score {
	\header {
		title = \markup {\medium "Corrente Prima" }
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Script.padding = #0.55
		\CorrI_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Script.padding = #0.2
		\CorrI_downst
		}
	>>
}



%%%%%%%%%%%%%%%%%%%%%%%%
%%  Corrente Seconda  %%
%%%%%%%%%%%%%%%%%%%%%%%%

CorrII_upst = \relative c'' {
	\clef treble
	\time 3/4
	r2 e4 | e4. d16 c b4 |
	<<{c2 b4} \\ {a2 g4 ~ }>> | <<a \\ g>> g <<a \\ fs>> |
	b g g' | g4. f16 e d4 |
	<<{e2 s4} \\ {r4 e, fs}>> | gs2 a4 |
	r b cs | d2 e,4 |
	fs gs a | <<{b2 b4} \\ {a2 gs4}>> |
	<<cs2 \\ a>> \bar ":|.|:" e'4 | e4. d16 c b4 |
	c4 d8 e f e | <<d2. \\ b>> |
	d4 g f | <<{e2 d4} \\ {c2 b4~}>> |
	<<{c4 d c} \\ {b4 a2}>> | <<{b2 a4} \\ {g2 f4~}>> |
	<<{g4 a g} \\ {f4 e2~}>> | <<{f4 g f} \\ {e4 d2~}>> |
	<<{e4 f e} \\ {d4 c2}>> |
	}

CorrII_downst = \relative c'' {
	\clef bass
	R2. | \clef alto r4 a gs |
	r a, b | c2 d4 |
	<<d2. \\ b g>> | \clef bass <<{c2 g4} \\ {r4 c, b}>> |
	<< g'2 \\ c, >> d4 | <<{r4 b' a} \\ {e2 fs4}>> |
	<<b2 \\ gs>> a4 | <<{b2 s4} \\ {r4 b, cs}>> |
	<<{a'2 s4} \\ {d,4 e f}>> | e d e |
	<<{a2 ~ a4} \\ {a,2 ~ a4}>> | <<e''2 ~ \\ c a>> <<e'4 \\ gs,>> |
	<<{e'2 d4} \\ {a2 f4}>> | <<d'2 \\ g,>> g,4 |
	<<d''2. \\ b g>> | <<{c2 s4} \\ {r4 c, d}>> |
	e2 fs4 | <<{g2 s4} \\ {r4 g, a}>> |
	b2 cs4 | d2 d,4 |
	e2 f4 |
	}


\score {
	\header {
		title = \markup {\medium "Corrente Seconda" }
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Script.padding = #0.55
		\CorrII_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Script.padding = #0.2
		\CorrII_downst
		}
	>>
}

