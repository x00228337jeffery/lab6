#!/bin/bash
ME=$1
gh pr merge Q12345 --repo $ME/lab6 --merge
gh pr view Q12345 --repo $ME/lab6 --json state
