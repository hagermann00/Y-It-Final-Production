import os
from reportlab.lib.pagesizes import landscape, letter
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Image, PageBreak
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.units import inch
from reportlab.lib.colors import HexColor

# --- CONFIGURATION ---
BOOK_TITLE = "Why Your Dropship Probably Will Fail"
OUTPUT_FILENAME = "Y-It_Book_01_Dropshipping.pdf"
ASSET_DIR = "../CONTENT_SYSTEM/ASSETS/IMAGES"

def create_pdf():
    print(f"--- STARTING FACTORY BUILD: {BOOK_TITLE} ---")
    doc = SimpleDocTemplate(OUTPUT_FILENAME, pagesize=(6*inch, 9*inch),
                            rightMargin=40, leftMargin=40,
                            topMargin=40, bottomMargin=40)
    
    styles = getSampleStyleSheet()
    
    # CHAD: Human, tired, cynical. Font: Helvetica (Clean)
    styles.add(ParagraphStyle(name='ChadSpeech', parent=styles['BodyText'], 
                             fontName='Helvetica-Oblique', fontSize=10, textColor=HexColor('#3A3A3A'), spaceAfter=6))
    
    # POSIBOT: Robot, manic, loud. Font: Courier (Machine)
    styles.add(ParagraphStyle(name='PosiBotSpeech', parent=styles['BodyText'], 
                             fontName='Courier-Bold', fontSize=10, textColor=HexColor('#5D7BEA'), spaceAfter=12))
    
    styles.add(ParagraphStyle(name='YItHeader', parent=styles['Heading1'], 
                             fontSize=18, textColor=HexColor('#E35050'), spaceAfter=20, alignment=1))

    Story = []

    # TITLE
    Story.append(Spacer(1, 2*inch))
    Story.append(Paragraph(BOOK_TITLE, styles['Title']))
    Story.append(Spacer(1, 0.5*inch))
    Story.append(Paragraph("A Y-IT Production", styles['Normal']))
    Story.append(PageBreak())

    # CONTENT STRUCTURE (The 8 Chapters)
    chapters = [
        ("01_THE_DREAM", "Visual: Human Chad (Green Polo, Clean Shaven) looking at laptop with PosiBot floating next to him."),
        ("02_THE_MATH", "Visual: Infographic - The Cost Iceberg (Red/Blue style)"),
        ("03_THE_CRASH", "Visual: Human Chad (Grey T-shirt, Stubble, Bags under eyes) sitting in messy room.")
    ]

    for title, visual_prompt in chapters:
        Story.append(Paragraph(title.replace("_", " "), styles['YItHeader']))
        
        # Image Handling
        found_image = False
        if os.path.exists(ASSET_DIR):
            for file in os.listdir(ASSET_DIR):
                if file.endswith(".png") or file.endswith(".jpg"):
                    img_path = os.path.join(ASSET_DIR, file)
                    # Simple resize logic for prototype
                    try:
                        im = Image(img_path, width=4.5*inch, height=4.5*inch, kind='proportional')
                        Story.append(im)
                        Story.append(Spacer(1, 0.2*inch))
                        found_image = True
                        break 
                    except:
                        pass
        
        if not found_image:
             Story.append(Paragraph(f"<b>[ASSET SLOT]:</b> {visual_prompt}", styles['BodyText']))
             Story.append(Spacer(1, 0.2*inch))

        Story.append(Paragraph("CHAD: I followed the guru's advice. My credit score is now 420.", styles['ChadSpeech']))
        Story.append(Paragraph("POSIBOT: 420 is a HIGH number! That implies GROWTH! 🌟", styles['PosiBotSpeech']))
        
        Story.append(PageBreak())

    try:
        doc.build(Story)
        print(f"SUCCESS: {OUTPUT_FILENAME} generated.")
    except Exception as e:
        print(f"CRITICAL FAILURE: {e}")

if __name__ == "__main__":
    create_pdf()
