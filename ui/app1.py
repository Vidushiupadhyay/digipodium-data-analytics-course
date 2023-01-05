import streamlit as st
from random import choice

st.title("Name  generator")

fnames=['Alex','bob','charlie','david','eve']

lnames = ['anderson','baker','clark','davis','evans']

btn= st.button("Generate Name")
if btn:
    fn=choice(fnames)
    ln=choice(lnames)
    fullname= f"{fn} {ln}"
    st.success(fullname)

# streamlit run ui/app1.py