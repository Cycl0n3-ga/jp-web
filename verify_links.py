import os
import re
from urllib.parse import unquote

def verify_links():
    html_files = [f for f in os.listdir('.') if f.endswith('.html')]
    print(f"Checking files: {html_files}")

    for file in html_files:
        print(f"Scanning {file}...")
        with open(file, 'r') as f:
            content = f.read()

        # Find hrefs and srcs
        hrefs = re.findall(r'href=["\'](.*?)["\']', content)
        srcs = re.findall(r'src=["\'](.*?)["\']', content)

        links = hrefs + srcs

        for link in links:
            if link.startswith('http'):
                continue # Skip external links
            if link.startswith('#'):
                continue # Skip anchors
            if link.startswith('mailto:'):
                continue

            # Remove query params or anchors
            link_path = link.split('?')[0].split('#')[0]
            link_path = unquote(link_path)

            if not os.path.exists(link_path):
                print(f"ERROR: Broken link in {file}: {link}")
            else:
                # print(f"OK: {link}")
                pass

    print("Verification complete.")

if __name__ == "__main__":
    verify_links()
