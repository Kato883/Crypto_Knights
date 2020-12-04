# Crypto_Knights
Group Project for Group 9 Crypto Knights

Example Stock Lists: [AMD, AAPL, GOOGL, TSLA, GME]

## Extract
* Historical stock data: The 'stocks_API_data_collection' script uses the Quandl API to query historical market data by exchange symbol. Each ticker needs a separate API call, so the script loads each JSON into a pandas dataframe and saves it as the value of a dictionary. Try-excepts are used to handle missing data.


## Transform
* Historical stock data: While the JSONs are being loaded into dataframes, a new column is created to denote that company's symbol--since that information is not included in the API call. Then, the dictionary of dataframes is flattened into a single dataframe. Superfluous columns are removed, and a new column that calculates the change in Market Open to Market Close price is added.


## Load
* Historical stock data: The data is loaded into Postgresql with sqlalchemy.


# Python Library Dependencies
BeautifulSoup
requests
pandas 
datetime
key from scrapingdog (https://www.scrapingdog.com/) Free key for first 1000 queries
