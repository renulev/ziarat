import os
from pathlib import Path

def main():
	input_dir = Path("contents")
	output_file = Path("contents.typ")
	
	files = sorted([f for f in input_dir.iterdir() if f.is_file()])
	
	with open(output_file, "w", encoding="utf-8") as outfile:
		outfile.write("#outline(title: [الفهرس])\n\n")
		
		for file_path in files:
			chapter_name = file_path.stem.replace("_", " ")
			outfile.write(f"= {chapter_name}\n\n")
			
			content = file_path.read_text(encoding="utf-8")
			outfile.write(content)
			outfile.write("\n\n")

if __name__ == "__main__":
	main()
