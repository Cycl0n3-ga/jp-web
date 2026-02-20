# Refactored Website: Prof. Jang-Ping Sheu

This repository contains a modern refactor of the personal academic website for Professor Jang-Ping Sheu, originally hosted at [http://hscc.cs.nthu.edu.tw/~sheujp/](http://hscc.cs.nthu.edu.tw/~sheujp/).

## Project Overview

The goal of this project was to reconstruct the original website into a clean, maintainable local repository using modern web standards. The refactor includes:

*   **Semantic HTML5**: Replaced old table-based layouts with semantic tags (`<header>`, `<nav>`, `<main>`, `<footer>`).
*   **CSS Styling**: Centralized styling in `css/style.css` for consistent design across all pages.
*   **Asset Management**: Organized images into an `images/` directory.
*   **Verification**: Included scripts to verify links and frontend appearance.

## File Structure

*   `index.html`: The main homepage.
*   `english.html`, `chinese.html`: Biography pages.
*   `publication.html`: List of publications.
*   `research.html`: Research areas and diagrams.
*   `student_project.html`: Student projects.
*   `award_list.html`: Honors and awards.
*   `album.html`: Photo album.
*   `css/`: Contains the stylesheet `style.css`.
*   `images/`: Contains all image assets downloaded from the original site.
*   `verification/`: Contains screenshots generated during frontend verification.
*   `scripts/`: (Note: verification scripts are in the root for easy access).

## How to Run

Simply open `index.html` in any modern web browser to view the website.

## Verification

This repository includes Python scripts for verification:

*   `verify_links.py`: Checks for broken internal links.
*   `verify_frontend.py`: Uses Playwright to generate screenshots of key pages for visual inspection.
