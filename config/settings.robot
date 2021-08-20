*** Settings ***
Library    AppiumLibrary
Library    BuiltIn
Library    Collections
Library    String

Resource    ./capabilities/${platform}_${environment}.robot

Resource    ../pages/login/login_page.robot
Resource    ../pages/login/${platform}_locators.robot
Resource    ../pages/home/home_page.robot
Resource    ../pages/home/${platform}_locators.robot

Resource    ../steps/login_steps.robot
Resource    ../steps/home_steps.robot


