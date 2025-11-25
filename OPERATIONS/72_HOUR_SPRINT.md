# 72-HOUR SPRINT: DROPSHIPPING BOOK TO AMAZON
## Execution Plan

**Goal:** Live on Amazon KDP in 72 hours  
**Blocker:** Image generation (~12-20 images needed)  
**Parallel Track:** Web version live

---

## PRE-SPRINT CHECKLIST (Before Starting)

- [ ] Amazon KDP account verified and active
- [ ] Bank account connected for royalties
- [ ] Tax information submitted
- [ ] Image generation service selected (see Decision below)

---

## DAY 1: FOUNDATION (Hours 1-24)

### Hour 0-1: Decision Point
**Choose Image Generation Service:**

| Service | Pros | Cons | Cost |
|---------|------|------|------|
| **Midjourney** | Best quality, style control | Discord workflow, learning curve | $10/mo |
| **DALL-E 3** | Easy API, good quality | Less style control | ~$0.04/image |
| **Vertex/Imagen** | Google integration | Access may be limited | Variable |
| **Ideogram** | Good for text in images | Newer, less proven | Free tier available |

**Recommendation:** Midjourney for quality, DALL-E for speed.

### Hours 1-4: Priority Images (5 Critical)
Generate these FIRST - they're above the fold:

1. **Title Page** - Y-IT logo + Chad + PosiBot
2. **Chapter 1 Hero** - Dream vs Reality split (Lambo over Alibaba warehouse)
3. **Cover Front** - Book cover design
4. **Cover Back** - With blurb + barcode space
5. **Page 2 Signature** - "Could. Would. Has..." design

**Use prompts from:** Google Drive doc `1tP1tzZ2Fj4AUrbzlAD583DCSRfw01qoMcU50MuXXYJw`

### Hours 4-8: Remaining Images
6. Chapter 2 - Guru comparison table visual
7. Chapter 3 - Wallet autopsy infographic
8. Chapter 4 - Timeline comic panel
9. Chapter 5 - Case study character portraits (batch of 7-8)
10. Chapter 6 - Statistical dashboard
11. Chapter 7 - Decision matrix flowchart
12. Chapter 8 - Hope/action visual

### Hours 8-12: Image Processing
- [ ] Resize all to KDP specs (300 DPI, correct dimensions)
- [ ] Color correct to brand palette
- [ ] Export as PNG (print) and WebP (web)

### Hours 12-24: Assembly Prep
- [ ] Verify manuscript is current version
- [ ] Map images to chapter locations
- [ ] Prepare cover files (front, back, spine calculated)

---

## DAY 2: ASSEMBLY (Hours 24-48)

### Hours 24-28: PDF Assembly
**Option A: Manual (InDesign/Affinity)**
1. Create 6x9" document with 0.125" bleed
2. Import manuscript text
3. Place images at marked locations
4. Apply styles per Universal Primer
5. Export print-ready PDF

**Option B: Automated (HTML → PDF)**
```bash
# Using Puppeteer or similar
node generate-pdf.js --input manuscript.html --output book.pdf --format kdp
```

**Option C: Use existing HTML**
- lgzkjppy.manus.space has complete book
- Screenshot/convert sections
- Assemble in PDF editor

### Hours 28-32: Cover Creation
**Spine Width Calculation:**
- Page count × 0.002252" (white paper) = spine width
- 50 pages = 0.113" spine
- 100 pages = 0.225" spine

**Cover Dimensions:**
- Front: 6" × 9"
- Back: 6" × 9"
- Spine: calculated width × 9"
- Total: (6 + spine + 6)" × 9.25" (with bleed)

**Use KDP Cover Calculator:** kdp.amazon.com/cover-calculator

### Hours 32-40: Quality Check
- [ ] PDF page count correct
- [ ] All images render at 300 DPI
- [ ] Text readable (no cut-off at margins)
- [ ] Cover wraps correctly
- [ ] No spelling/grammar errors in visible spots
- [ ] Page numbers correct
- [ ] Table of contents links work (if included)

### Hours 40-48: KDP Prep
- [ ] Write book description (use marketing copy)
- [ ] Select categories (Business > E-Commerce, Self-Help > Personal Finance)
- [ ] Choose keywords (7 max)
- [ ] Set price ($9.99)
- [ ] Decide on KDP Select enrollment (Yes = exclusive 90 days, No = sell elsewhere)

---

## DAY 3: LAUNCH (Hours 48-72)

### Hours 48-52: KDP Upload
1. Log into kdp.amazon.com
2. Create New Paperback
3. Enter metadata:
   - Title: "Why Your Dropship Probably Will Fail"
   - Subtitle: "Even Though Your AI, Which You Programmed with a Positive Attitude, Has a Positive Attitude About Your Dropship Store"
   - Author: [Your author name/pen name]
   - Description: [Marketing copy]
4. Upload interior PDF
5. Upload cover PDF
6. Preview with KDP Previewer
7. Fix any flagged issues

### Hours 52-56: Review & Submit
- [ ] Use KDP Previewer to check every page
- [ ] Verify cover alignment
- [ ] Check ISBN assignment
- [ ] Set territories (worldwide)
- [ ] Set pricing by market
- [ ] Submit for review

### Hours 56-72: Parallel Tasks While Waiting
Amazon review takes 24-72 hours. Use this time for:

- [ ] Set up web sales page (if not done)
- [ ] Prepare email announcement
- [ ] Create social media posts
- [ ] Generate expanded PDF version
- [ ] Start Book 2 research (Amazon FBA)

---

## CONTINGENCY: TEXT-ONLY VERSION (48 Hours)

If image generation is blocked, ship text-only:

1. Remove image placeholders from manuscript
2. Add [IMAGE PLACEHOLDER] notes for v2
3. Publish as "First Edition"
4. Update with images in v2 (free update for buyers)

**Pros:** Ships faster, validates demand
**Cons:** Lower perceived value, may affect reviews

---

## SUCCESS CRITERIA

| Metric | Target |
|--------|--------|
| Book live on Amazon | ✅ Yes |
| Interior quality | No KDP warnings |
| Cover quality | Professional appearance |
| Price set | $9.99 |
| Categories selected | 2-3 relevant |
| Keywords optimized | 7 high-intent |

---

## POST-LAUNCH (Days 4-7)

- [ ] Order author copy (verify print quality)
- [ ] Request reviews from beta readers
- [ ] Monitor sales dashboard
- [ ] Respond to any customer questions
- [ ] Plan promotional push
- [ ] Begin Book 2 production

---

## RESOURCES

- **KDP Help:** kdp.amazon.com/help
- **Cover Calculator:** kdp.amazon.com/cover-calculator
- **Manuscript:** lgzkjppy.manus.space (live) or /mnt/project/complete_hybrid_guide.md
- **Image Prompts:** Google Drive doc ID `1tP1tzZ2Fj4AUrbzlAD583DCSRfw01qoMcU50MuXXYJw`
- **Brand Specs:** /mnt/project/___UNIVERSAL_PRIMER_v1.0***

---

*Clock starts when you select image generation service. Go.*
