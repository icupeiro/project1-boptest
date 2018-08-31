# -*- coding: utf-8 -*-
"""
This module defines the test case, including the model fmu, 
control inputs, measurements, standard simulation options (such as solver 
and tolerance), and any standard inputs (such as weather).  It also 
defines the API to the test case used by the REST requests to perform 
functions such as advancing the simulation, retreiving test case information,
and calculating and reporting results.

"""

from pyfmi import load_fmu
import numpy as np
import copy

class TestCase(object):
    '''Class that implements the test case.
    
    '''
    
    def __init__(self):
        '''Constructor.
        
        '''
        
        # Define simulation model
        self.fmupath = 'models/SimpleRC_Input.fmu'
        # Define measurements
        self.y = {'time':[], 'TZone':[], 'PHeat':[], 'EHeat':[]}
        self.y_store = copy.deepcopy(self.y)
        # Define inputs
        self.u = {}
        self.u_store = copy.deepcopy(self.u)
        # Load fmu
        self.fmu = load_fmu(self.fmupath)
        # Get version
        self.fmu_version = self.fmu.get_version()
        # Set default options
        self.options = self.fmu.simulate_options()
        self.options['CVode_options']['rtol'] = 1e-6 
        # Set default communication step
        self.set_step(3600)
        # Set simulation start and end
        self.start_time = 0
        self.final_time = 86400        
        self.initialize = True
        self.options['initialize'] = self.initialize
        
    def advance(self):
        '''Advances the test case model simulation forward.

        '''
        
        # Simulate
        self.options['initialize'] = self.initialize
        res = self.fmu.simulate(start_time=self.start_time, 
                                final_time=self.final_time, 
                                options=self.options)
        # Get result and store measurement
        for key in self.y.keys():
            self.y[key] = res[key][-1]
            self.y_store[key] = self.y_store[key] + res[key].tolist()[1:]
        # Store control inputs
        for key in self.u.keys():
            self.u_store[key] = self.u_store[key] + res[key].tolist()[1:] 
            
        return self.y
        
    def get_step(self):
        '''Returns the current simulation step in seconds.'''

        return self.step

    def set_step(self,step):
        '''Sets the simulation step in seconds.
        
        Parameters
        ----------
        step : int
            Simulation step in seconds.
            
        Returns
        -------
        None
        
        '''
        
        self.step = float(step)
        self.fmu.set('config.samplePeriod',step)
        
        return None
        
    def get_inputs(self):
        '''Returns a list of control input names.
        
        Parameters
        ----------
        None
        
        Returns
        -------
        inputs : list
            List of control input names.
            
        '''

        inputs = self.u.keys()
        
        return inputs
        
    def get_measurements(self):
        '''Returns a list of measurement names.
        
        Parameters
        ----------
        None
        
        Returns
        -------
        measurements : list
            List of measurement names.
            
        '''

        measurements = self.y.keys()
        
        return measurements
        
    def get_results(self):
        '''Returns measurement and control input trajectories.
        
        Parameters
        ----------
        None
        
        Returns
        -------
        Y : dict
            Dictionary of measurement and control input names and their 
            trajectories as lists.
            {'y':{<measurement_name>:<measurement_trajectory>},
             'u':{<input_name>:<input_trajectory>}
            }
        
        '''
        
        Y = {'y':self.y_store, 'u':self.u_store}
        
        return Y
        
    def get_kpis(self):
        '''Returns KPI data.
        
        Parameters
        ----------
        None
        
        Returns
        kpi : dict
            Dictionary containing KPI names and values.
            {<kpi_name>:<kpi_value>}
        
        '''
        
        kpi = dict()
        # Energy
        kpi['Energy'] = self.y_store['EHeat'][-1]
        # Comfort
        kpi['Max Discomfort'] = min(self.y_store['TZone'])-(273.15+20)

        return kpi
        
    def get_name(self):
        '''Returns the name of the test case fmu.
        
        Parameters
        ----------
        None
        
        Returns
        -------
        name : str
            Name of test case fmu.
            
        '''
        
        name = self.fmupath[7:-4]
        
        return name