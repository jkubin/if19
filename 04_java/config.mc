# 2019/02/24 Josef Kubin
#
# Source Code Generators
# installfest 2019

CLASS([Bicycle])
#         name      type      getter           setter
PROPERTY([speed],  [int],    [getSpeed],       [setSpeed])
PROPERTY([color],  [String], [getColor])
PROPERTY([gear],   [int],    [getGear],        [setGear])
PROPERTY([brand],  [String], [getBrand])

CLASS([Address])
#         name      type      getter           setter
PROPERTY([street], [String], [getStreet])
PROPERTY([city],   [String], [getCity])
PROPERTY([state],  [String], [getState])
PROPERTY([zip],    [String], [getZip])

CLASS([Vegetable])
#         name      type      getter           setter
PROPERTY([name],   [String], [getName])
PROPERTY([kind],   [String], [getKind])
PROPERTY([occurr], [String], [getOccurence],  [setOccurence])
PROPERTY([color],  [String], [getColor])
PROPERTY([size],   [float],  [getSize],       [setSize])
PROPERTY([edible], [boolean],[getEdible])

CLASS([Animal])
#         name      type      getter           setter
PROPERTY([name],   [String], [getName])
PROPERTY([birth],  [long],   [getBirth])
PROPERTY([wild],   [boolean],[getWildness])
PROPERTY([mamal],  [boolean],[getMamal])
