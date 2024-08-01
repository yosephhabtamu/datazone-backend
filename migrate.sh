#!/bin/bash

# Analytics module
# Delete old migration
rm -rf ./DataZone-web-api/src/Modules/Analytics/DZ.Modules.Analytics.Infrastructure/Persistence/Migrations/*
# Go to the infrastructure folder
cd ./DataZone-web-api/src/Modules/Analytics/DZ.Modules.Analytics.Infrastructure/
# Create new migration
dotnet ef migrations add "Initial" --startup-project ../../../Bootstrapper/DZ.Bootstrapper/ --output-dir Persistence/Migrations --context AnalyticsDbContext
# Print if the script is done
echo "***** Analytics Done *****"
# End of Analytics module

# DataMarket module
# Delete old migration
rm -rf ../../DataMarket/DZ.Modules.DataMarket.Infrastructure/Persistence/Migrations/*
# Go to the infrastructure folder
cd ../../DataMarket/DZ.Modules.DataMarket.Infrastructure/
# Create new migration
dotnet ef migrations add "Initial" --startup-project ../../../Bootstrapper/DZ.Bootstrapper/ --output-dir Persistence/Migrations --context DataMarketDbContext
# Print if the script is done
echo "***** DataMarket Done *****"
# End of DataMarket module

# Datasets Module
# Delete old migration
rm -rf ../../Datasets/DZ.Modules.Datasets.Infrastructure/Persistence/Migrations/*
# Go to the infrastructure folder
cd ../../Datasets/DZ.Modules.Datasets.Infrastructure/
# Create new migration
dotnet ef migrations add "Initial" --startup-project ../../../Bootstrapper/DZ.Bootstrapper/ --output-dir Persistence/Migrations --context DatasetDbContext
# Print if the script is done
echo "***** Datasets Done *****"
# End of Datasets module

# Identity module
# Delete old migration
rm -rf ../../Identities/DZ.Modules.Identities.Infrastructure/Persistence/Migrations/*
# Go to the infrastructure folder
cd ../../Identities/DZ.Modules.Identities.Infrastructure/
# Create new migration
dotnet ef migrations add "Initial" --startup-project ../../../Bootstrapper/DZ.Bootstrapper/ --output-dir Persistence/Migrations --context UserDbContext
# Print if the script is done
echo "***** Identity Done *****"
# End of Identity module
