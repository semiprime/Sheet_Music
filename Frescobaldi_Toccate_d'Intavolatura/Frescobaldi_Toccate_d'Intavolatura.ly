\version "2.18.2"
\language "english"

#(set-default-paper-size "a4")

\paper {
	top-margin = .9\cm
	bottom-margin = .8\cm
	%system-count = #6
	max-systems-per-page = 6
	ragged-bottom = ##t
	system-system-spacing #'basic-distance = #13
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

% Notes:
%
%   Bars 2,13: The separation of the groups of three eighth-notes in
%   the original has been preserved.
%

CorrI_upst = \relative c'' {
	\clef treble
	\time 3/4
	r2 a4 | a4. \autoBeamOff g8 f g \autoBeamOn |
	e4. d8 <<e4 \\ cs>>| \override Stem.direction=#UP f8 g a b c4 |
	d e f \revert Stem.directon | <<{bf,2 a4} \\ {d, e f}>> |
	<< g2. \\ e>> | \break << {g4 a} \\ e2>> f4 |
	<<e2 \\ cs>> d4 | e8 f g f <<e4 \\cs >> |
	d2 \bar ":|.|:" a'4 | a2 b4 |
	c4. \autoBeamOff b8 c d \autoBeamOn | \break b4. a8 <<b4 \\ gs>> |
	a8 g a b c4 | d e f |
	<<{e2 e4} \\ {r4 g, ~ g}>> | <<{d'2 e4} \\ {g,2 ~ g4}>> |
	<<{c2 c4} \\ {e,2 fs4}>> | <<{b2 s4} \\ {g4 a b}>> | \break
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
	<<{r a'4 f} \\ {a,2 bf4}>> | <<g'2 \\ g,>> <<a'4 \\ e a,>> |
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
		\override Staff.NoteHead.style = #'baroque
		\override Script.padding = #0.55
		\CorrI_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Staff.NoteHead.style = #'baroque
		\override Script.padding = #0.2
		\CorrI_downst
		}
	>>
}


\pageBreak

%%%%%%%%%%%%%%%%%%%%%%%%
%%  Corrente Seconda  %%
%%%%%%%%%%%%%%%%%%%%%%%%

% Notes:
%
%   Bars 1-5: No change of clef is required in the original publication
%   since the left hand is written on 8 lines extending up to the G
%   above middle-C. For this transcription, the alto-clef was used as
%   it is reasonably familiar and it corresponds to the top section of
%   the original staff (top line is the G above middle-C).
%
%   Bar 25: There is a mark attached to the stem of the E which could
%   be a partially written G. However, in this notation chords
%   typically have a stem on each note head, rather than one for the
%   whole chord as in modern notation (see, for example, Corrente
%   Terza, bar 23, RH). Therefore the possibility of this G being
%   present has been rejected for this transcription.
%
%   Bar 36: B natural marked as B sharp in the original.  This
%   corresponds to the notational convention of the time in which a
%   sharp, rather than a natural, cancelled a flat.
%

CorrII_upst = \relative c'' {
	\clef treble
	\time 3/4
	r2 e4 | e4. d16 c b4 |
	<<{c2 b4} \\ {a2 g4 ~ }>> | <<a \\ g>> g <<a \\ fs>> |
	b g g' | g4. f16 e d4 |
	<<{e2 s4} \\ {r4 e, fs}>> | gs2 a4 | \break
	r b cs | d2 e,4 |
	fs gs a | <<{b2 b4} \\ {a2 gs4}>> |
	<<cs2 \\ a>> \bar ":|." e'4 | e4. d16 c b4 |
	c4 d8 e f e | <<d2. \\ b>> | \break
	d4 g f | <<{e2 d4} \\ {c2 b4~}>> |
	<<{c4 d c} \\ {b4 a2}>> | <<{b2 a4} \\ {g2 f4~}>> |
	<<{g4 a g} \\ {f4 e2~}>> | <<{f4 g f} \\ {e4 d2~}>> |
	<<{e4 f e} \\ {d4 c2}>> | <<{d2 d4} \\ {c2 b4}>> | \break
	<<{e2 g4} \\ {c,2 s4}>> | g'4. a16 b c4 |
	b4. a8 gs4 | <<{a2 g4} \\ {f2 s4}>> |
	f4 e d | e2 fs4 |
	<<{r4 d'2} \\ {g,4 ~ g r}>> | c4 d c | \break
	<<b2. \\ {g4 d e}>> | <<a2. \\ f>> |
	g2 g'4 | f g f |
	e f e | d2. |
	c4 d c | b2 e,4 | \break
	fs4. g8 a4 | b4. c8 d4 |
	c b a | <<{e'2 e4} \\ {gs,2 a4}>> |
	<<{fs'2 gs4} \\ {a,2 b4}>> | <<{a'2 s4} \\ {cs,2 a4}>> |
	<<{b2 b4} \\ {a2 gs4}>> | <<cs\breve*3/8\fermata \\ a>>
	\bar "|."
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
	e2 f4 | g f g |
	<<c2. \\ c,>> | <<g''2 \\ e  c>> <<a'4 \\ a,>> |
	<<b'2 \\ gs  e>> <<b'4 \\ e,>> | f8 g a b << c4 \\ e,>> |
	<<{c'2 b4} \\ {d,2 g4}>> | c,4 c'2 |
	<<{s2 d4} \\ {b2 ~ b4}>> | <<{e2 fs4} \\ {a,2 ~ a4}>> |
	r2 g4 | f g f |
	<<{c'2 ~ c4} \\ {e,4 f e}>> | <<{c'2 b!4} \\ {d,2 d4}>> |
	<<{c'2 c4} \\ {g2 ~ g4} {c,2 ~ c4}>> | <<{b'4 c b} \\ {g2 ~ g4}>> |
	<<{a2 ~ a4} \\ {s2 a,4}>> | <<b'2 \\ gs e>> cs4 |
	<<{a'2 a4} \\ {d,2 c4}>> | <<a'2 \\ b,>> gs'4 |
	<<{a4 g} \\ e2 a,>> f'4 | e4 d cs |
	d c b | a g f |
	e d e | <<a'\breve*3/8 \\ a,\fermata>>
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
		\override Staff.NoteHead.style = #'baroque
		\override Script.padding = #0.55
		\CorrII_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Staff.NoteHead.style = #'baroque
		\override Script.padding = #0.2
		\CorrII_downst
		}
	>>
}


\pageBreak

%%%%%%%%%%%%%%%%%%%%%%
%%  Corrente Terza  %%
%%%%%%%%%%%%%%%%%%%%%%

CorrIII_upst = \relative c'' {
	\clef treble
	\key f \major
	\time 3/4
	c2 c4 | c4. d16 e f4 |
	e4. d8 c4 | f8 e f g a bf |
	g4. a8 f4 | << {e4 ~ e f} \\ {r4 c2}>> |
	g'8 f e f g e | f4. g8 ef4 |
	d2 c4 | b g c |
	f8 e d c d[ e] | <<c2. \\ g e>> |
	\bar ":|."
	a'4 bf8  a g f | g4 a8 g f e |
	f4 d8 e f d | g4. a8 g4 |
	a2 c,4 | b g8 a b! g |
	c4. d8 c4 | d4. e8 f4 |
	<<{e2 f4} \\ {r4 c ~ c}>> | g'8 f e f g e |
	<<f2. \\ c a>> | c8 d e f g4 |
	}

CorrIII_downst = \relative c' {
	\clef bass
	\key f \major
	<<c2. \\ a f>> | <<c'2 \\ a f>> <<b4 \\ d,>> |
	<<c'2. \\ g c,>> | <<f2. \\ c f,>> |
	<<c'2 \\ e,>> <<f'4 \\ c f,>> | << g'2. \\ {c,2 d4}>> |
	<<c'2 \\ g e>> <<c'4 \\ g c,>> | <<c'2 \\ a f>> <<c'4 \\ s>> |
	<<d2 \\ b g>> <<c4 \\ a>> | <<d2 \\ g,>> <<c4 \\ g e>> |
	<<d'2 \\ a f>> <<d'4 \\ b g>> | <<c2. \\ g c,>> |
	<<c'2. \\ a f>> | <<c'2. \\ g c,>> |
	<<a'2 \\ f d~>> <<b'4 \\ d,>> | <<b'2 \\ g e~>> <<c'4 \\ e,>> |
	<<{c'2~ c4} \\ {f,4. g8 a4}>> | <<d2 \\ b~ g~>> <<e'4 \\ b g>> |
	<<{e'2 f4} \\ {a,2 a4}>> | <<{f'2 f4} \\ {bf,2 d4}>> |
	<<{g2 a4} \\ {c,2 a4}>> | <<{g'2 ~ g4} \\ {bf,4 c ~ c}>> |
	<<f2. ~ \\ c ~ f, ~ >> | <<f'2 \\ c f,>> <<r4 \\ r \\ r >> |
	}


\score {
	\header {
		title = \markup {\medium "Corrente Terza" }
		composer = ##f
		subtitle = ##f
	}
	\new PianoStaff <<
	\new Staff = "up" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Staff.NoteHead.style = #'baroque
		\override Script.padding = #0.55
		\CorrIII_upst
		}
	\new Staff = "down" {
		#(set-accidental-style 'forget)
		\override Staff.TimeSignature.style = #'single-digit
		\override Staff.Rest.style = #'classical
		\override Staff.NoteHead.style = #'baroque
		\override Script.padding = #0.2
		\CorrIII_downst
		}
	>>
}

