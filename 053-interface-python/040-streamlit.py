# example of steamlit   
# to run -- streamlit run /workspaces/hellocodespace/053-interface-python/040-streamlit.py --server.enableCORS false --server.enableXsrfProtection false
# https://docs.streamlit.io/en/stable/api.html
# https://docs.streamlit.io/en/stable/api.html#display-interactive-widgets
import streamlit as st
import numpy as np
import pandas as pd
import time
# streamlit first page
st.title('My first app')
st.write("Here's our first attempt at using data to create a table:")
st.write(pd.DataFrame({
    'first column': [1, 2, 3, 4],
    'second column': [10, 20, 30, 40]
}))
# streamlit second page
st.title('My second app')
chart_data = pd.DataFrame(
        np.random.randn(20, 3),
        columns=['a', 'b', 'c'])
st.line_chart(chart_data)
# streamlit third page
st.title('My third app')
map_data = pd.DataFrame(
        np.random.randn(1000, 2) / [50, 50] + [37.76, -122.4],
        columns=['lat', 'lon'])
st.map(map_data)    
