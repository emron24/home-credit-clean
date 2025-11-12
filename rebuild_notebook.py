import nbformat
from nbformat.v4 import new_code_cell, new_notebook

# 1. Create the Parameter Cell
param_source = '# Set default values for papermill to overwrite\nhandoff_id = "default_id"\nartifact_path = "default_path"'
param_cell = new_code_cell(param_source)
param_cell.metadata['tags'] = ['parameters']

# 2. Create the Smoke Test Cell
smoke_source = '# Final smoke test\nprint(f"Handoff ID: {handoff_id}")'
smoke_cell = new_code_cell(smoke_source)

# 3. Create the Notebook structure with correct kernel info
nb = new_notebook(
    cells=[param_cell, smoke_cell],
    metadata={
        'kernelspec': {'display_name': 'Python 3', 'language': 'python', 'name': 'python3'},
        'language_info': {'name': 'python'}
    }
)

# 4. Save the file cleanly into the notebooks folder
with open('notebooks/process-handoff.ipynb', 'w') as f:
    nbformat.write(nb, f)

print('Notebook successfully rebuilt and saved into the notebooks directory.')