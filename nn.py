#!/usr/bin/env python3
"""Create and open a daily notes document."""

import os
import subprocess
from datetime import date

NOTES_DIR = "/Users/krijnfaber/Documents/notes"

def main():
    os.makedirs(NOTES_DIR, exist_ok=True)
    
    today = date.today().strftime("%Y-%m-%d")
    note_path = os.path.join(NOTES_DIR, f"{today}.md")
    
    if not os.path.exists(note_path):
        with open(note_path, "w") as f:
            f.write(f"# Notes for {today}\n\n")
    
    subprocess.run(["open", "-a", "Sublime Text", note_path])

if __name__ == "__main__":
    main()
