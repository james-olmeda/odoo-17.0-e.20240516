#!/bin/bash

#!/bin/bash


# Create a new virtual environment
python -m venv antenv

# Activate the virtual environment
source atenv/bin/activate

# Install dependencies
pip install -r requirements.txt


# Set up necessary director
# Start Odoo
exec odoo-bin -c odoo.conf
