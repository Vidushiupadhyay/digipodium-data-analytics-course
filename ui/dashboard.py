import pandas as pd
import plotly.express as px
import streamlit as st

#load data
def load_titanic_data():
    return pd.read_csv('ui/titanic.csv')

#clean data
def clean_data(df):
    df.drop(column=['Cabin'], inplace=True)
    df['Age'].fillna(df['Age'].mean(), inplace=True)
    return df

#display
with st.spinner("Loading dataset..."):
    titanic = load_titanic_data()

st.dataframe(titanic)

selected_col = st.selectbox("Select a column", titanic.columns.tolist())
st.metric(f'Column: {selected_col}',
        str(titanic[selected_col].size), 
        titanic[selected_col].nunique())

st.write(titanic[selected_col])

# streamlit run ui/dashboard.py

#visualize