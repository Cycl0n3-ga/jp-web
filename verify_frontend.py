from playwright.sync_api import sync_playwright
import os

def run():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        page = browser.new_page()

        # Get absolute path
        cwd = os.getcwd()

        # Verify index.html
        page.goto(f"file://{cwd}/index.html")
        page.screenshot(path="verification/index.png", full_page=True)
        print("Screenshot of index.html saved.")

        # Verify english.html
        page.goto(f"file://{cwd}/english.html")
        page.screenshot(path="verification/english.png", full_page=True)
        print("Screenshot of english.html saved.")

        # Verify research.html
        page.goto(f"file://{cwd}/research.html")
        page.screenshot(path="verification/research.png", full_page=True)
        print("Screenshot of research.html saved.")

        browser.close()

if __name__ == "__main__":
    run()
