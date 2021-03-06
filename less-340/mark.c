/*
 * Copyright (c) 1984,1985,1989,1994,1995,1996,1999  Mark Nudelman
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice in the documentation and/or other materials provided with 
 *    the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE 
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN 
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include "less.h"

extern IFILE curr_ifile;
extern int sc_height;
extern int jump_sline;

/*
 * A mark is an ifile (input file) plus a position within the file.
 */
struct mark {
	IFILE m_ifile;
	struct scrpos m_scrpos;
};

/*
 * The table of marks.
 * Each mark is identified by a lowercase or uppercase letter.
 */
#define	NMARKS		(2*26)		/* a-z, A-Z */
static struct mark marks[NMARKS];

/*
 * Special mark for the "last mark"; addressed by the apostrophe.
 */
static struct mark lmark;

/*
 * Initialize the mark table to show no marks are set.
 */
	public void
init_mark()
{
	int i;

	for (i = 0;  i < NMARKS;  i++)
		marks[i].m_scrpos.pos = NULL_POSITION;
	lmark.m_scrpos.pos = NULL_POSITION;
}

/*
 * See if a mark letter is valid (between a and z).
 */
	static struct mark *
getumark(c)
	int c;
{
	if (c >= 'a' && c <= 'z')
		return (&marks[c-'a']);

	if (c >= 'A' && c <= 'Z')
		return (&marks[c-'A'+26]);

	error("Invalid mark letter", NULL_PARG);
	return (NULL);
}

/*
 * Get the mark structure identified by a character.
 * The mark struct may come either from the mark table
 * or may be constructed on the fly for certain characters like ^, $.
 */
	static struct mark *
getmark(c)
	int c;
{
	register struct mark *m;
	static struct mark sm;

	switch (c)
	{
	case '^':
		/*
		 * Beginning of the current file.
		 */
		m = &sm;
		m->m_scrpos.pos = ch_zero();
		m->m_scrpos.ln = 0;
		m->m_ifile = curr_ifile;
		break;
	case '$':
		/*
		 * End of the current file.
		 */
		if (ch_end_seek())
		{
			error("Cannot seek to end of file", NULL_PARG);
			return (NULL);
		}
		m = &sm;
		m->m_scrpos.pos = ch_tell();
		m->m_scrpos.ln = sc_height-1;
		m->m_ifile = curr_ifile;
		break;
	case '.':
		/*
		 * Current position in the current file.
		 */
		m = &sm;
		get_scrpos(&m->m_scrpos);
		m->m_ifile = curr_ifile;
		break;
	case '\'':
		/*
		 * The "last mark".
		 */
		m = &lmark;
		break;
	default:
		/*
		 * Must be a user-defined mark.
		 */
		m = getumark(c);
		if (m == NULL)
			break;
		if (m->m_scrpos.pos == NULL_POSITION)
		{
			error("Mark not set", NULL_PARG);
			return (NULL);
		}
		break;
	}
	return (m);
}

/*
 * Is a mark letter is invalid?
 */
	public int
badmark(c)
	int c;
{
	return (getmark(c) == NULL);
}

/*
 * Set a user-defined mark.
 */
	public void
setmark(c)
	int c;
{
	register struct mark *m;
	struct scrpos scrpos;

	m = getumark(c);
	if (m == NULL)
		return;
	get_scrpos(&scrpos);
	m->m_scrpos = scrpos;
	m->m_ifile = curr_ifile;
}

/*
 * Set lmark (the mark named by the apostrophe).
 */
	public void
lastmark()
{
	struct scrpos scrpos;

	get_scrpos(&scrpos);
	if (scrpos.pos == NULL_POSITION)
		return;
	lmark.m_scrpos = scrpos;
	lmark.m_ifile = curr_ifile;
}

/*
 * Go to a mark.
 */
	public void
gomark(c)
	int c;
{
	register struct mark *m;
	struct scrpos scrpos;

	m = getmark(c);
	if (m == NULL)
		return;

	/*
	 * If we're trying to go to the lastmark and 
	 * it has not been set to anything yet,
	 * set it to the beginning of the current file.
	 */
	if (m == &lmark && m->m_scrpos.pos == NULL_POSITION)
	{
		m->m_ifile = curr_ifile;
		m->m_scrpos.pos = ch_zero();
		m->m_scrpos.ln = jump_sline;
	}

	/*
	 * If we're using lmark, we must save the screen position now,
	 * because if we call edit_ifile() below, lmark will change.
	 * (We save the screen position even if we're not using lmark.)
	 */
	scrpos = m->m_scrpos;
	if (m->m_ifile != curr_ifile)
	{
		/*
		 * Not in the current file; edit the correct file.
		 */
		if (edit_ifile(m->m_ifile))
			return;
	}

	jump_loc(scrpos.pos, scrpos.ln);
}

/*
 * Return the position associated with a given mark letter.
 *
 * We don't return which screen line the position 
 * is associated with, but this doesn't matter much,
 * because it's always the first non-blank line on the screen.
 */
	public POSITION
markpos(c)
	int c;
{
	register struct mark *m;

	m = getmark(c);
	if (m == NULL)
		return (NULL_POSITION);

	if (m->m_ifile != curr_ifile)
	{
		error("Mark not in current file", NULL_PARG);
		return (NULL_POSITION);
	}
	return (m->m_scrpos.pos);
}
