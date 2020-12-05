# Crypto_Knights
Group Project for Group 9 Crypto Knights

Example Stock Lists: [AMD, AAPL, GOOGL, TSLA, GME]
Example Coin Lists: [BTC, ETH, LTC-USD, XRP-USD, DASH-USD]

## Extract
* Historical stock data: The 'stocks_API_data_collection' script uses the Quandl API to query historical market data by exchange symbol. Each ticker needs a separate API call, so the script loads each JSON into a pandas dataframe and saves it as the value of a dictionary. Try-excepts are used to handle missing data.
* Historical cryptocurrency data: The 'read_CSVs' script imports CSVs into data frames inside Jupyter Notebook. Each CSV requires its own dataframe, requriring separate calls and variables to store each in. 


## Transform
* Historical stock data: While the JSONs are being loaded into dataframes, a new column is created to denote that company's symbol--since that information is not included in the API call. Then, the dictionary of dataframes is flattened into a single dataframe. Superfluous columns are removed, and a new column that calculates the change in Market Open to Market Close price is added.
* Historical cryptocurrency data: Each dataset in each dataframe needs to be formatted specifically, some with their own issues to address. In all cases, some columns need commas removed from the represented numbers to render the data is an int. Certain data frames needs the replace function to exlude "-", which was being represented as 0 in numeric columns. All dataframes were then needed to be combined to be loaded into the database.


## Load
* Before loading our data, we used an ERD to create and format the tables we wanted to utilize with the information we were extracting. We then determined that Postgres database management system would be the best way to load our data into a DB. After retrieving the API calls, web scraping and importing data into CSV's, it was imperitive that we had uniform columns that correlate with the database that had been created. Using Python, we transfered all of the data necessary into the Postgres DB.  We are now able to train model with the Crypto and Stock History table then test the model using the Web Scraping Table.


# Python Library Dependencies
BeautifulSoup
requests
pandas 
datetime
key from scrapingdog (https://www.scrapingdog.com/) Free key for first 1000 queries
