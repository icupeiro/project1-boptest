import pyfmi
import os
from pyfmi import load_fmu
import numpy as np
import pandas as pd

pathFMU = "Multizone_Commercial_Hydronic_Testcase.fmu"
#pathFMU = "Multizone_Commercial_Hydronic_SubSystems_BuildingEnvelope_EnvelopeSim.fmu"

model = load_fmu(pathFMU, log_level=7)

opts = model.simulate_options()
# opts["CVode_options"]["store_event_points"] = False 
# opts['CVode_options']['rtol'] = 1e-6

opts["solver"] = "ExplicitEuler"
opts["ExplicitEuler_options"]["h"] = 15 
opts["ExplicitEuler_options"]["store_event_points"] = False
#opts['ExplicitEuler_options']['rtol'] = 1e-6
opts["ExplicitEuler_options"]["verbosity"] = 70

opts["initialize"] = True
opts["ncp"] = 8760
opts["filter"] = ".*TSensor.*"

res = model.simulate(start_time=0, final_time=31536000, options=opts)
