@echo off
REM Delegate Research to Gemini CLI (Windows Version)
REM Usage: delegate-research-to-gemini.bat [topic-slug]

setlocal enabledelayedexpansion

set TOPIC_SLUG=%1

if "%TOPIC_SLUG%"=="" (
    echo Usage: delegate-research-to-gemini.bat [topic-slug]
    echo Example: delegate-research-to-gemini.bat crypto-day-trading
    exit /b 1
)

REM Define output directories
set OUTPUT_DIR=archives\01-RESEARCH\%TOPIC_SLUG%
set PROMPTS_DIR=scripts\prompts\gemini

REM Create directories if they don't exist
if not exist "%OUTPUT_DIR%\case-studies" mkdir "%OUTPUT_DIR%\case-studies"
if not exist "%PROMPTS_DIR%" mkdir "%PROMPTS_DIR%"

echo ==========================================
echo Delegating Research to Gemini CLI
echo Topic: %TOPIC_SLUG%
echo ==========================================

REM Create prompt files
call :create_research_brief_prompt
call :create_case_studies_prompt
call :create_affiliates_prompt

echo.
echo ==========================================
echo Executing Prompts via Gemini CLI
echo ==========================================

REM Check if Gemini CLI is available
where gemini >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo WARNING: Gemini CLI not found. Please install it first:
    echo     npm install -g @google/generative-ai-cli
    echo.
    echo Or run prompts manually:
    echo 1. Prompt files saved to: %PROMPTS_DIR%\
    echo 2. Copy each prompt and paste into Gemini web interface
    echo 3. Save responses to: %OUTPUT_DIR%\
    exit /b 1
)

REM Execute Research Brief
echo.
echo Executing: Research Brief Prompt...
gemini -p "@%PROMPTS_DIR%\%TOPIC_SLUG%_01_research_brief.txt" > "%OUTPUT_DIR%\01_RESEARCH_BRIEF.md" 2>&1
if %ERRORLEVEL% equ 0 (
    echo [OK] Research Brief Complete: %OUTPUT_DIR%\01_RESEARCH_BRIEF.md
) else (
    echo [ERROR] Research Brief Failed - check output for errors
)

REM Execute Case Studies
echo.
echo Executing: Case Studies Prompt...
gemini -p "@%PROMPTS_DIR%\%TOPIC_SLUG%_02_case_studies.txt" > "%OUTPUT_DIR%\case_studies_raw.md" 2>&1
if %ERRORLEVEL% equ 0 (
    echo [OK] Case Studies Complete: %OUTPUT_DIR%\case_studies_raw.md
    echo    (You'll need to split this into 11 separate files)
) else (
    echo [ERROR] Case Studies Failed - check output for errors
)

REM Execute Affiliate Research
echo.
echo Executing: Affiliate Research Prompt...
gemini -p "@%PROMPTS_DIR%\%TOPIC_SLUG%_03_affiliates.txt" > "%OUTPUT_DIR%\05_AFFILIATE_OPPORTUNITIES.md" 2>&1
if %ERRORLEVEL% equ 0 (
    echo [OK] Affiliate Research Complete: %OUTPUT_DIR%\05_AFFILIATE_OPPORTUNITIES.md
) else (
    echo [ERROR] Affiliate Research Failed - check output for errors
)

REM Summary
echo.
echo ==========================================
echo Research Delegation Complete
echo ==========================================
echo.
echo Prompts Generated:
echo   1. [OK] %PROMPTS_DIR%\%TOPIC_SLUG%_01_research_brief.txt
echo   2. [OK] %PROMPTS_DIR%\%TOPIC_SLUG%_02_case_studies.txt
echo   3. [OK] %PROMPTS_DIR%\%TOPIC_SLUG%_03_affiliates.txt
echo.
echo Expected Outputs:
echo   1. %OUTPUT_DIR%\01_RESEARCH_BRIEF.md
echo   2. %OUTPUT_DIR%\case_studies_raw.md (split into 11 files)
echo   3. %OUTPUT_DIR%\05_AFFILIATE_OPPORTUNITIES.md
echo.
echo Next Steps:
echo   1. Review generated research files
echo   2. Split case_studies_raw.md into 11 separate files
echo   3. Create remaining docs (02_SOURCE_REGISTRY, 03_DATA_VALIDATION, 04_GURU_LANDSCAPE)
echo   4. Run validation: /agent-research-validator %TOPIC_SLUG% validate
echo.

exit /b 0

REM ============================================================
REM Function: Create Research Brief Prompt
REM ============================================================
:create_research_brief_prompt
(
echo # TASK: Comprehensive Research Brief for Y-IT Nano-Book
echo.
echo **Topic:** %TOPIC_SLUG%
echo.
echo **Context:**
echo You are conducting market research for a 24-page satirical business reality-check book. The book exposes harsh truths behind guru-marketed business opportunities using data-driven analysis, failure statistics, and anonymized case studies.
echo.
echo **Brand Voice:** "Y-IT" = satirical contrarian analyst ("Adult Swim meets Bloomberg Terminal"^)
echo - Data-driven skepticism (mock gurus/systems, not readers^)
echo - Statistical honesty over motivational fluff
echo - Respect reader intelligence
echo.
echo ---
echo.
echo ## DELIVERABLE: 01_RESEARCH_BRIEF.md
echo.
echo **Word Count:** 2,500-4,500 words
echo.
echo **Required Sections:**
echo.
echo ### 1. Executive Summary (200 words^)
echo - Top 5 key findings
echo - Overall market attractiveness score (1-10^)
echo - Primary failure mechanism
echo - Reality vs. guru promise gap
echo.
echo ### 2. Market Size ^& Growth
echo **Required Data (with 3+ sources each^):**
echo - Global market size (USD, current year^)
echo - CAGR (Compound Annual Growth Rate^)
echo - Number of active participants
echo - Market saturation level (1-10 rating^)
echo - Geographic distribution
echo.
echo ### 3. Participant Success Rate
echo **Required Statistics:**
echo - Failure rate within 4 months (%%^)
echo - Failure rate within 1 year (%%^)
echo - Success rate (earning $500+/month^) (%%^)
echo - Top 10%% income threshold
echo.
echo ### 4. Cost Structure Breakdown
echo **Three-Tier Analysis:**
echo - Tier 1: Minimum Viable Entry ($X,XXX^)
echo - Tier 2: Guru "Recommended" Budget ($XX,XXX^)
echo - Tier 3: Hidden Costs First 6 Months ($XX,XXX+^)
echo.
echo ### 5. Profitability Reality
echo - Median income vs. mean income
echo - Top 10%% and top 1%% thresholds
echo - Survivorship bias explanation
echo.
echo ### 6. Timeline Analysis
echo - Time to first sale
echo - Time to profitability
echo - Time to burnout (median^)
echo - Hours/week commitment
echo.
echo ### 7. 8 Key Failure Mechanisms (Ranked^)
echo Document 8 most common failure patterns with frequency percentages
echo.
echo ### 8. Guru vs. Reality Gap
echo Compare guru promises to statistical reality
echo.
echo ### 9. Platform/Tool Dependency
echo - Primary platforms
echo - Fee structures
echo - Algorithm/policy risks
echo.
echo ### 10. Strategic Assessment
echo Final market attractiveness score (1-10^) with breakdown
echo.
echo ---
echo.
echo ## RESEARCH REQUIREMENTS
echo - Minimum 40 credible sources
echo - 3+ sources per statistic
echo - Target confidence: 90%%+
echo - Inline citations: [Source, Year]
echo.
echo ---
echo.
echo BEGIN RESEARCH NOW. Provide complete 2,500+ word 01_RESEARCH_BRIEF.md document with all sections filled.
) > "%PROMPTS_DIR%\%TOPIC_SLUG%_01_research_brief.txt"
exit /b

:create_case_studies_prompt
(
echo # TASK: Develop 11 Anonymized Case Studies for %TOPIC_SLUG%
echo.
echo Create 11 composite character case studies showing realistic failure scenarios.
echo.
echo **Word Count:** 500-800 words per case study
echo.
echo ## 11 REQUIRED ARCHETYPES:
echo.
echo 1. The Optimistic Beginner - Undersaved, oversold
echo 2. The Technical Expert - Skill ≠ market fit
echo 3. The Multi-Product Gambler - Shotgun approach
echo 4. The Partnership Dissolution - Conflict + loss
echo 5. The College Entrepreneur - Time/capital mismatch
echo 6. The Exceptional Effort - Hard work, still failed
echo 7. The Smart Quitter - Recognized red flags early
echo 8. The Platform Victim - Algorithm/policy change
echo 9. The Niche Saturation - Arrived too late
echo 10. The Hidden Cost Victim - Fees destroyed margins
echo 11. The Compliance Casualty - Legal/regulatory
echo.
echo ## TEMPLATE (for each^):
echo.
echo ### Character Profile
echo - Name, age, background, motivation
echo.
echo ### Initial Plan
echo - Start date, niche, budget, time commitment
echo - Expected outcome and timeline
echo.
echo ### Month-by-Month Breakdown
echo - 3-6 months of detailed progression
echo - Revenue, costs, net loss per month
echo - Emotional state evolution
echo.
echo ### Final Outcome
echo - Total financial loss
echo - Total time invested
echo - Impact on life/relationships
echo - Quitting trigger
echo.
echo ### Failure Mechanism Analysis
echo - Primary cause
echo - Contributing factors
echo - Warning signs missed
echo.
echo ### What They Wish They Knew
echo - 3 key insights they learned too late
echo.
echo ---
echo.
echo **File Names:** %TOPIC_SLUG%_CS_001_[Name].md through CS_011_[Name].md
echo.
echo BEGIN CASE STUDY CREATION. Provide all 11 complete case studies.
) > "%PROMPTS_DIR%\%TOPIC_SLUG%_02_case_studies.txt"
exit /b

:create_affiliates_prompt
(
echo # TASK: Affiliate Opportunity Research for %TOPIC_SLUG%
echo.
echo Identify 50+ affiliate monetization opportunities.
echo.
echo ## CATEGORIES:
echo.
echo ### 1. Platform Affiliates
echo Main platforms used for %TOPIC_SLUG%
echo.
echo ### 2. Tool ^& Software Affiliates
echo - Marketing tools
echo - Design tools
echo - Automation tools
echo - Financial software
echo.
echo ### 3. Course Affiliates
echo - Guru courses (document but DON'T promote^)
echo - Legitimate educational programs
echo.
echo ### 4. Service Provider Affiliates
echo - Freelancer platforms
echo - Professional services
echo - Payment processors
echo.
echo ### 5. Alternative Opportunities
echo "What Actually Works Instead" - better alternatives to %TOPIC_SLUG%
echo.
echo ## FOR EACH OPPORTUNITY:
echo.
echo - Commission structure
echo - Cookie duration
echo - Approval requirements
echo - Ethical score (1-10^)
echo - Y-IT alignment: ✅ Promote / ⚠️ Neutral / ❌ Don't Promote
echo - Average earnings per conversion
echo.
echo ## OUTPUT:
echo.
echo 1. **Markdown:** 05_AFFILIATE_OPPORTUNITIES.md
echo 2. **CSV:** AFFILIATE_CATALOG_TABLE.csv
echo.
echo ---
echo.
echo BEGIN AFFILIATE RESEARCH. Provide complete document with 50+ opportunities.
) > "%PROMPTS_DIR%\%TOPIC_SLUG%_03_affiliates.txt"
exit /b
