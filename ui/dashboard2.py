import pandas as pd
import plotly.express as px
import streamlit as st

#load data
def load_titanic_data():
    return pd.read_csv('ui/titanic.csv')

#clean data
def clean_data(df):
    df.drop(columns=['Cabin'], inplace=True)
    df['Age'].fillna(df['Age'].mean(), inplace=True)
    # df['Survived']= df['Survived'].apply(lambda x: 'Yes' if x==1 else 'No') ye line zarori nhi h likhna
    return df

#display
with st.spinner("Loading dataset..."):
    titanic = load_titanic_data()
    titanic = clean_data(titanic)

st.dataframe(titanic)

if st.sidebar.checkbox('Show the titanic dataset'):
    st.header('Titanic dataset')
    st.dataframe(titanic)


if st.sidebar.checkbox('View data types for each column'):
    st.header('Data types for each column')
    c1, c2, c3 =st.columns(3)
    total_cols = len(titanic.columns)
    for idx,col in enumerate(titanic):
        if idx < total_cols/3:
            c1.metric(f'Column: {col}',
            f'Type: {titanic[col].dtype}',
            f'Unique: {titanic[col].nunique()}')
        elif idx < 2*total_cols/3:
            c2.metric(f'Column: {col}',
            f'Type: {titanic[col].dtype}',
            f'Unique: {titanic[col].nunique()}')
        else:
            c3.metric(f'Column: {col}',
            f'Type: {titanic[col].dtype}',
            f'Unique: {titanic[col].nunique()}')

if st.sidebar.checkbox('View summary statistics for each column'):
    st.header('Summary statis for each column')
    st.dataframe(titanic.describe(include='all'), use_container_width=True)

st.header('Univariate column analysis')
goptions = ['bar','histogram', 'box', 'violin', 'scatter']
c1, c2 = st.columns(2)
selected_col = st.selectbox('select a column', titanic.columns.tolist())
graph_type = st.selectbox('select a graph type', goptions)
if graph_type == goptions[0]:
    fig = px.bar(titanic, x=selected_col)
elif graph_type == goptions[1]:
    fig = px.histogram(titanic, x=selected_col)
elif graph_type == goptions[2]:
    fig = px.box(titanic, x=selected_col)
elif graph_type == goptions[3]:
    fig = px.violin(titanic, x=selected_col)
elif graph_type == goptions[4]:
    fig = px.scatter(titanic, x=selected_col)
st.plotly_chart(fig)

st.header('Bivariate column analysis')
goptions = ['box', 'violin', 'scatter']
c1, c2, c3 = st.columns(3)
sc1 = c1.selectbox('select a column for X', titanic.columns.to_list())
sc2 = c2.selectbox('select a column for Y', titanic.columns.tolist())
graph_type = c3.selectbox('Select a graph type', goptions)
try:
    if graph_type == goptions[0]:
        fig = px.box(titanic, x=sc1, y=sc2)
    elif graph_type == goptions[1]:
        fig = px.violin(titanic, x=sc1, y=sc2)
    elif graph_type == goptions[2]:
        fig = px.scatter(titanic, x=sc1, y=sc2)
    st.plotly_chart(fig)
except Exception as e:
    st.error(f'Error: {e}')
    st.error('Please select diifferent columns for X and Y')

st.header('Important visualisations')

# survival rate with respect to passenger class
fig = px.bar(titanic, x='Pclass', y='Survived', facet_col='Sex', color='Survived', title='Survival rate with respect to passenger class', color_discrete_map=px.colors.qualitative.Dark24)
st.plotly_chart(fig)

# streamlit run ui/dashboard2.py