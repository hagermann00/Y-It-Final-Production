# HAIKU TASK INSTRUCTIONS
## Delegation Prompts for Claude Haiku

---

## HOW TO USE THIS FILE

Copy the relevant task prompt, paste into a Haiku session, and let it execute. Each task is self-contained with context and expected output format.

---

## TASK 1: GENERATE IMAGE FROM PROMPT

**When to use:** You have an image description and need the actual generation prompt formatted for Midjourney/DALL-E.

```markdown
# IMAGE GENERATION TASK

## Context
I'm creating images for the Y-IT book series. The brand uses:
- Color palette: #F5F2EC (cream), #3A3A3A (charcoal), #5D7BEA (blue), #E35050 (red), #6EC972 (green), #F8C952 (yellow)
- Style: Corporate dystopia meets dark comedy
- Characters: Chad (deteriorating optimist), PosiBot (oblivious AI cheerleader)
- Tone: Satirical, data-driven, empathetic cynicism

## Image Needed
[DESCRIBE THE IMAGE YOU NEED]

## Requirements
- KDP compliant: 300 DPI
- Dimensions: [SPECIFY - e.g., "full page 1800x2700px" or "inline 1200px width"]
- Must match brand color palette
- Professional but satirical

## Output Format
Provide:
1. Midjourney prompt (with parameters)
2. DALL-E prompt (natural language)
3. Any notes on what to regenerate if first attempt misses
```

---

## TASK 2: RESEARCH NEW TOPIC

**When to use:** Starting research for a new Y-IT book topic.

```markdown
# TOPIC RESEARCH TASK

## Context
I'm researching [TOPIC] for a Y-IT book. Y-IT books expose the gap between business opportunity marketing and statistical reality.

## Research Requirements
Execute this framework:

### PHASE 1: MARKET LANDSCAPE
- Market size, growth rates, projections (current and 5-year)
- Key drivers, trends, disruption factors
- Regulatory environment

### PHASE 2: CUSTOMER INTELLIGENCE
- Target demographic and psychographic profiles
- Pain points, needs, unmet demands
- Buying behavior, price sensitivity

### PHASE 3: PRODUCT ECOSYSTEM
- Core offerings in the space
- Pricing models, feature sets
- Technology requirements

### PHASE 4: COMPETITIVE LANDSCAPE
- Top 5-10 players with market share
- Competitive advantages and moats
- White space opportunities

### PHASE 5: OPERATIONAL REALITY
- Key success factors and failure points
- Resource requirements (capital, time, skills)
- Scalability factors

### PHASE 6: RISK ASSESSMENT
- Primary business risks
- Financial risks
- Technology risks

### PHASE 7: STATISTICAL REALITY
- Actual success/failure rates (MUST cite sources)
- Real income data (median, not cherry-picked)
- Time to profitability
- Hidden costs

## Output Format
- Executive summary (300 words)
- Detailed findings by phase
- Key statistics with sources
- "Guru claim vs reality" comparisons
- Recommended angle for Y-IT treatment
```

---

## TASK 3: GENERATE CHAPTER CONTENT

**When to use:** Creating a specific chapter for a Y-IT book.

```markdown
# CHAPTER GENERATION TASK

## Context
Creating Chapter [X] for Y-IT book on [TOPIC].

## Brand Voice Requirements
- Tone: Empathetic cynicism ("beautiful, stubborn fool")
- Style: Corporate dystopia meets dark comedy
- Progression: Cynical analysis with brutal data
- Include: Guru Quote Boxes, Reality Check Sidebars, specific statistics

## Chapter Assignment
[SPECIFY WHICH CHAPTER AND ITS PURPOSE]

Chapter purposes:
1. The Great [TOPIC] Lie - Dream vs Data
2. The Sucker's Roadmap - How it's sold vs reality
3. Wallet Autopsy - Hidden costs
4. How Your [BUSINESS] Dies - Failure points
5. Tales from the Trenches - 7 case studies (1 winner + 5 failures + 1 winner)
6. The Numbers Don't Lie - Statistical reality
7. Should You Even Try? - Decision framework
8. The Guru Ecosystem - Follow the money

## Research Input
[PASTE RELEVANT RESEARCH DATA HERE]

## Output Format
- Complete chapter text (2,000-3,000 words)
- [IMAGE PLACEHOLDER: description] markers where visuals go
- Guru Quote Boxes formatted as blockquotes
- Reality Check Sidebars clearly marked
- Specific statistics with source indicators
```

---

## TASK 4: GENERATE CASE STUDY CHARACTER

**When to use:** Creating one of the 7 case study characters for Chapter 5.

```markdown
# CASE STUDY CHARACTER TASK

## Context
Creating a case study character for Y-IT Chapter 5: Tales from the Trenches.

## Character Type
[SPECIFY ONE]:
- Story 1: Connected Success (unfair advantage winner)
- Story 2: Spiritual/Wellness Type (beautiful failure)
- Story 3: Tech Bro (beautiful failure)
- Story 4: Expert (beautiful failure)
- Story 5: Side Hustler (beautiful failure)
- Story 6: Over-Analyzer (beautiful failure)
- Story 7: Insane Grinder (psychotic winner)

## Topic
[TOPIC - e.g., dropshipping, Amazon FBA, etc.]

## Requirements
1. Character Introduction (age, background, what drew them)
2. The Plan/Strategy they pursued
3. Mathematical Reality (specific investments, revenues, losses)
4. Visual Element placeholder (per archetype)
5. Brutal but Empathetic Conclusion
6. Zinger Ending (memorable final line)

## Output Format
- 400-600 words
- Include specific dollar amounts
- Include time invested vs results
- End with signature Y-IT empathy: "beautiful, stubborn fool" energy
- [VISUAL ELEMENT] placeholder with description
```

---

## TASK 5: AUDIT FILE/FOLDER

**When to use:** Need to understand what's in a location.

```markdown
# AUDIT TASK

## Location to Audit
[SPECIFY: Google Drive folder, GitHub repo, local path, URL]

## What I Need
- Complete file listing
- File sizes and modification dates
- Content summary for each file
- Identification of duplicates
- Status assessment (complete, partial, deprecated)
- Recommended actions

## Output Format
Table format:
| File | Size | Modified | Status | Notes |
|------|------|----------|--------|-------|

Plus:
- Key findings summary
- Recommended next steps
- Files to prioritize
- Files to ignore/archive
```

---

## TASK 6: FORMAT CONVERSION

**When to use:** Converting content between formats.

```markdown
# FORMAT CONVERSION TASK

## Source
[PASTE CONTENT OR SPECIFY LOCATION]

## Source Format
[markdown/html/text/etc.]

## Target Format
[SPECIFY: KDP-ready markdown, HTML with styles, EPUB structure, Audio script]

## Requirements
- Preserve all content
- Apply Y-IT styling
- Include image placeholders
- Maintain chapter structure

## Output
Complete converted content, ready to use.
```

---

## TASK 7: QA CHECK

**When to use:** Verifying content before publishing.

```markdown
# QA CHECK TASK

## Content to Review
[PASTE OR SPECIFY LOCATION]

## Check Against
- Y-IT voice/tone (empathetic cynicism)
- Statistical accuracy (no hallucinated numbers)
- Brand consistency (color refs, character names)
- KDP compliance (word count, structure)
- Spelling/grammar
- Image placeholder completeness

## Output Format
- Pass/Fail for each criterion
- Specific issues found
- Recommended fixes
- Overall assessment
```

---

## TASK 8: DAILY STANDUP

**When to use:** Getting current status and next actions.

```markdown
# DAILY STANDUP TASK

## Current State
Review all Y-IT production materials and provide:

1. **Done Yesterday:** What was completed
2. **Doing Today:** What should be prioritized
3. **Blockers:** What's preventing progress
4. **Decisions Needed:** What requires human input

## Reference Files
- OPERATIONS/TASK_QUEUE.md
- OPERATIONS/72_HOUR_SPRINT.md
- PRODUCT/CATALOG_INDEX.md

## Output Format
Brief bullet points, actionable, with time estimates.
```

---

## EMERGENCY TASK: "JUST DO IT"

**When to use:** You're stuck and need something done without thinking.

```markdown
# JUST DO IT

## What I Need
[DESCRIBE IN PLAIN LANGUAGE]

## Context
This is for Y-IT, an anti-guru book series. Satirical, data-driven, helps people avoid business scams.

## Constraints
[ANY LIMITATIONS - time, format, length]

## Output
Just give me something usable. Don't ask questions. Make reasonable assumptions. I'll iterate if needed.
```

---

*Copy. Paste. Execute. Iterate.*
