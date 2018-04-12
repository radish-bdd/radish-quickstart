# -*- coding: utf-8 -*-

from radish import before, after

from calculator import Calculator

@before.each_scenario
def init_calculator(scenario):
    scenario.context.calculator = Calculator()

@after.each_scenario
def destory_calculator(scenario):
    del scenario.context.calculator
