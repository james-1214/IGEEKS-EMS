# Kept for compatibility. The generator is now build.py (questions, exam packages, validation, report).
import runpy, os
runpy.run_path(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'build.py'), run_name='__main__')
