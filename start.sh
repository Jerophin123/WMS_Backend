#!/usr/bin/env bash
set -e
pip install -r requirements.txt
exec gunicorn backend_MySQL:app --bind 0.0.0.0:${PORT:-8000}
