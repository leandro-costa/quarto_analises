library(rio)
regrasV5_aptidao_regras <- import("dbf/regrasV5_aptidao_regras.rds")
regrasV5_aptidao_regras_modelo_multinom_aplicado <- import("dbf/regrasV5_aptidao_regras_modelo_multinom_aplicado.rds")
regrasV5_aptidao_regras_modelo_rpart_aplicado <- import("dbf/regrasV5_aptidao_regras_modelo_rpart_aplicado.rds")

head(regrasV5_aptidao_regras)
head(regrasV5_aptidao_regras_modelo_multinom_aplicado)
head(regrasV5_aptidao_regras_modelo_rpart_aplicado)
regrasV5_aptidao_regras["aptidao_multinom"] <- regrasV5_aptidao_regras_modelo_multinom_aplicado["aptidao"]
regrasV5_aptidao_regras["aptidao_rpart"] <- regrasV5_aptidao_regras_modelo_rpart_aplicado["aptidao"]

head(regrasV5_aptidao_regras)

export(regrasV5_aptidao_regras, "rds/regrasV5_aptidao_regras_multinom_rpart.dbf")

