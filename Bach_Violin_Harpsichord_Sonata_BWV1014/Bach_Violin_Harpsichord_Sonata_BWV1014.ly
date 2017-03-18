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
	cs,8. b16 d( cs) b( a) e'2 |
	% \bar "|."
	}

mvtII_kbd = \relative c {
	\clef bass
	\key d \major
	r2 r4 d' ~ | d cs b2 |
	%a g fs g a4 a, | d1 \bar "|."
	}

\score {
	\header {
	piece = \markup { \italic "Andanto" }
	opus = ##f
	}
	<<
		\set strictBeatBeaming = ##t
		\override Script.padding = #0.5
		#(set-accidental-style 'forget)
		\mvtII_vln

		%\new Staff {
		%	#(set-accidental-style 'forget)
		%	\mvtII_bass
		%}

	>>
}
