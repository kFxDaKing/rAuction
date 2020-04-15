local stocks = {}


Citizen.CreateThread(function()
    GetStocks()
end)

function GetStocks()
    local data = LoadResourceFile(GetCurrentResourceName(), "data/stock.json")
    stocks = json.decode(data)
end

function UpdateGarage()
    SaveResourceFile(GetCurrentResourceName(), "data/stock.json", json.encode(stocks))
end