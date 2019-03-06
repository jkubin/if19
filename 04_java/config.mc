# 2019/02/24 Josef Kubin
#
# Source Code Generators
# installfest 2019

CLASS([Bicycle])
#         name      type      getter         setter
PROPERTY([speed],  [int],    [Speed],       [Speed])
PROPERTY([color],  [String], [Color])
PROPERTY([gear],   [int],    [Gear],        [Gear])
PROPERTY([brand],  [String], [Brand])

CLASS([Address])
#         name      type      getter         setter
PROPERTY([street], [String], [Street])
PROPERTY([city],   [String], [City])
PROPERTY([state],  [String], [State])
PROPERTY([zip],    [String], [Zip])

CLASS([Vegetable])
#         name      type      getter         setter
PROPERTY([name],   [String], [Name])
PROPERTY([kind],   [String], [Kind])
PROPERTY([occurr], [String], [Occurence],  [Occurence])
PROPERTY([color],  [String], [Color])
PROPERTY([size],   [float],  [Size],       [Size])
PROPERTY([edible], [boolean],[Edible])

CLASS([Animal])
#         name      type      getter         setter
PROPERTY([name],   [String], [Name])
PROPERTY([birth],  [long],   [Birth])
PROPERTY([wild],   [boolean],[Wildness])
PROPERTY([mamal],  [boolean],[Mamal])
