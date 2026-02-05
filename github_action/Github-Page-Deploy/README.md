# GitHub Pages Deployment with GitHub Actions

This project demonstrates continuous integration and continuous deployment (CI/CD) using GitHub Actions to automatically deploy a static website to GitHub Pages.

A project from Roadmap.sh : https://roadmap.sh/projects/github-actions-deployment-workflow

## Project Goal

The goal of this project is to learn GitHub Actions by creating a workflow that automatically deploys changes to GitHub Pages whenever the `index.html` file is modified.

## Requirements

- A simple `index.html` file with a "Hello, GitHub Actions!" message
- A GitHub Actions workflow that:
  - Triggers only when `index.html` is changed
  - Deploys the website to GitHub Pages
  - Runs on push to the main branch

## How It Works

1. When you push changes to `index.html` on the main branch
2. GitHub Actions automatically detects the change
3. The workflow runs and deploys the updated site to GitHub Pages
4. The website is accessible at: `https://<username>.github.io/<repository-name>/`

## Technologies Used

- GitHub Actions
- GitHub Pages
- Static HTML
