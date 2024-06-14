FROM python:2.7
WORKDIR /html
COPY index.html
EXPOSE 3000
CMD python -m SimpleHTTPServer 3000
RUN dotnet publish -c Release -o out

