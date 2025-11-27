# Gemini CLI Research Delegation Guide

**Purpose:** Automate Phase 0 research by delegating to Gemini CLI

**Status:** ✅ Ready to Use (Gemini CLI detected on system)

---

## Quick Start

### Windows:
```bash
cd C:\Users\dell3630\y-it-nano
scripts\delegate-research-to-gemini.bat crypto-day-trading
```

### Linux/Mac:
```bash
cd ~/y-it-nano
./scripts/delegate-research-to-gemini.sh crypto-day-trading
```

---

## What This Script Does

### 1. Creates 3 Comprehensive Prompts
The script generates detailed prompts for:
- **Research Brief** (2,500-4,500 words)
- **Case Studies** (11 archetypes × 500-800 words)
- **Affiliate Research** (50+ opportunities)

### 2. Executes via Gemini CLI
Automatically sends prompts to Gemini and saves responses to:
```
archives/01-RESEARCH/[topic-slug]/
  01_RESEARCH_BRIEF.md
  case_studies_raw.md
  05_AFFILIATE_OPPORTUNITIES.md
```

### 3. Generates Quality Checklist
Provides validation criteria to review outputs before accepting.

---

## Available Topics (Phase 0 Queue)

**Ready for research (6 topics):**
1. `crypto-day-trading` - Cryptocurrency Day Trading
2. `real-estate-wholesaling` - Real Estate Wholesaling
3. `onlyfans-creator` - OnlyFans Creator Economy
4. `crypto-nft-creation` - Crypto NFT Creation
5. `freelance-writing` - Freelance Writing
6. `virtual-assistant-service` - Virtual Assistant Service

---

## Usage Examples

### Execute Single Topic
```bash
# Windows
scripts\delegate-research-to-gemini.bat crypto-day-trading

# Linux/Mac
./scripts/delegate-research-to-gemini.sh crypto-day-trading
```

### Execute All 6 Queued Topics (Parallel)
```bash
# Windows
for %t in (crypto-day-trading real-estate-wholesaling onlyfans-creator crypto-nft-creation freelance-writing virtual-assistant-service) do scripts\delegate-research-to-gemini.bat %t

# Linux/Mac
for topic in crypto-day-trading real-estate-wholesaling onlyfans-creator crypto-nft-creation freelance-writing virtual-assistant-service; do
  ./scripts/delegate-research-to-gemini.sh "$topic" &
done
wait
```

---

## What Gets Generated

### Prompt Files (Saved to `scripts/prompts/gemini/`)
1. `[topic]_01_research_brief.txt` - Complete research brief prompt
2. `[topic]_02_case_studies.txt` - 11 case study prompts
3. `[topic]_03_affiliates.txt` - Affiliate research prompt

**You can:**
- Review prompts before execution
- Copy/paste into Gemini web UI if CLI fails
- Customize prompts for specific topics

### Output Files (Saved to `archives/01-RESEARCH/[topic]/`)
1. `01_RESEARCH_BRIEF.md` - Comprehensive market analysis
2. `case_studies_raw.md` - All 11 case studies (needs splitting)
3. `05_AFFILIATE_OPPORTUNITIES.md` - Monetization opportunities

---

## Post-Execution Steps

### 1. Review Generated Files
Check quality of Gemini's output:
- [ ] Word count targets met?
- [ ] Statistics sourced (3+ citations each)?
- [ ] 11 case studies complete?
- [ ] 50+ affiliates documented?

### 2. Split Case Studies File
Gemini returns all 11 case studies in one file. Split into separate files:
```bash
# Manual split or use text editor
# Target format: [TOPIC]_CS_001_[Name].md through CS_011_[Name].md
```

### 3. Create Remaining Documents
The script handles 3 of 7 required research documents. Create manually:
- `02_SOURCE_REGISTRY.md` - Extract sources from research brief
- `03_DATA_VALIDATION.md` - Verify statistics (3+ sources each)
- `04_GURU_LANDSCAPE.md` - Guru course analysis

### 4. Run Validation
```bash
/agent-research-validator [topic-slug] validate
```

### 5. Archive and Index
```bash
/agent-archival-curator [topic-slug] organize
```

---

## Prompt Details

### Research Brief Prompt (01)

**Sections Generated:**
1. Executive Summary (200 words)
2. Market Size & Growth (with sources)
3. Participant Success Rate (failure %)
4. Cost Structure (3 tiers)
5. Profitability Reality (median vs mean)
6. Timeline Analysis (time to profit/burnout)
7. 8 Key Failure Mechanisms
8. Guru vs. Reality Gap
9. Platform/Tool Dependency
10. Strategic Assessment (1-10 score)

**Quality Standards:**
- 2,500-4,500 words
- 40+ sources minimum
- 3+ sources per statistic
- 90%+ data confidence
- Inline citations

### Case Studies Prompt (02)

**11 Required Archetypes:**
1. Optimistic Beginner - Undersaved
2. Technical Expert - Skill ≠ success
3. Multi-Product Gambler - No focus
4. Partnership Dissolution - Conflict
5. College Entrepreneur - Time mismatch
6. Exceptional Effort - Worked hard, failed
7. Smart Quitter - Cut losses early
8. Platform Victim - Algorithm change
9. Niche Saturation - Too late to market
10. Hidden Cost Victim - Fee structures
11. Compliance Casualty - Legal issues

**Template Per Case:**
- Character profile (age, background, motivation)
- Initial plan (budget, timeline, strategy)
- Month-by-month breakdown (3-6 months)
- Final outcome (loss, time, impact)
- Failure mechanism analysis
- What they wish they knew

### Affiliate Research Prompt (03)

**5 Categories:**
1. Platform Affiliates (Shopify, Amazon, etc.)
2. Tool & Software (marketing, design, automation)
3. Course Affiliates (gurus + legitimate ed)
4. Service Providers (freelancer platforms, etc.)
5. Alternative Opportunities (what works instead)

**Data Per Opportunity:**
- Commission structure
- Cookie duration
- Approval requirements
- Ethical score (1-10)
- Y-IT alignment (✅/⚠️/❌)
- Average earnings per conversion

---

## Troubleshooting

### Gemini CLI Not Found
```bash
# Install globally
npm install -g @google/generative-ai-cli

# Verify installation
gemini --version
```

### Authentication Required
```bash
# Set API key
export GOOGLE_API_KEY="your-gemini-api-key"

# Or configure via CLI
gemini config set apiKey YOUR_KEY
```

### Output Files Empty or Incomplete
- Prompts may be too long for single request
- Break into smaller chunks manually
- Use Gemini web UI (gemini.google.com) instead
- Copy prompts from `scripts/prompts/gemini/` folder

### Rate Limiting
Gemini free tier has daily limits:
- Space out requests if running all 6 topics
- Run 2-3 topics per day instead of all at once

---

## Manual Execution Alternative

If CLI fails, use Gemini web UI:

1. **Open Gemini:** https://gemini.google.com/
2. **Copy Prompt:** From `scripts/prompts/gemini/[topic]_01_research_brief.txt`
3. **Paste & Execute:** In Gemini chat
4. **Save Response:** Copy output to `archives/01-RESEARCH/[topic]/01_RESEARCH_BRIEF.md`
5. **Repeat:** For case studies and affiliates prompts

---

## Quality Checklist

Before accepting research as complete:

**Research Brief:**
- [ ] 2,500+ words delivered
- [ ] All 10 sections complete
- [ ] 40+ sources cited
- [ ] Market size verified (3+ sources)
- [ ] Failure rate verified (3+ sources)
- [ ] 8 failure mechanisms documented
- [ ] Strategic score assigned (1-10)

**Case Studies:**
- [ ] All 11 archetypes present
- [ ] 500-800 words each
- [ ] Month-by-month breakdowns
- [ ] Financial figures realistic ($1.5K-$15K losses)
- [ ] Failure mechanisms match research
- [ ] Anonymization complete

**Affiliate Research:**
- [ ] 50+ opportunities documented
- [ ] Commission rates verified
- [ ] Ethical scores assigned
- [ ] Y-IT alignment marked
- [ ] CSV spreadsheet format included
- [ ] Alternative opportunities identified

---

## Next Phase Integration

After research complete:

### Phase 1: Content Creation (LEG 1)
```bash
# Use research brief as input
# Compress case studies from 11 → 7
# Generate 18,000-22,000 word manuscript
```

### Phase 2: Content Refinement (LEG 2)
```bash
# Copy editing
# Voice alignment
# Fact-checking against sources
```

### Phase 3: Design
```bash
# Hand research + manuscript to designer
# Designer creates KDP-compliant PDF
```

---

## Time Savings

**Manual Research (Traditional):** 7 days per topic
**Gemini CLI Delegation:** 2-4 hours per topic (mostly review time)

**Savings:** ~85% time reduction per topic

**For 6 Queued Topics:**
- Manual: 42 days (6 weeks)
- Gemini: 12-24 hours (1-2 days)

---

## Cost Analysis

**Gemini CLI (Free Tier):**
- Cost: $0
- Daily limit: ~50 prompts
- Sufficient for: 2-3 topics/day

**Gemini Pro (Paid):**
- Cost: $20/month
- Daily limit: Higher
- Sufficient for: All 6 topics same day

**ROI:**
- Time saved: 40+ days
- Cost: $0-$20
- Value: Massive acceleration

---

## Support

**Script Issues:**
- Check logs in terminal output
- Review prompt files for errors
- Test Gemini CLI: `gemini -p "Hello world"`

**Quality Issues:**
- Re-run prompts with more specific guidance
- Manually edit outputs to meet standards
- Use `/agent-research-validator` to identify gaps

**Questions:**
- See: `logs/UNIVERSAL_RESEARCH_ENGINE.md`
- See: `logs/BATCH_A_EXECUTION_PLAN.md`

---

**Created:** 2025-11-15
**Status:** ✅ Production Ready
**Gemini CLI:** Detected on system
