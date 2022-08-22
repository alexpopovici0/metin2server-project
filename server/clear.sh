#!/bin/sh
# Erases all log files and deletes remaining UNIX core dumps.
# (Executes child scripts)

ROOT=$PWD

# Clear db
cd $ROOT/db && sh clear.sh

# Clear auth
cd $ROOT/auth && sh clear.sh

# Clear channel1
cd $ROOT/channel1/first && sh clear.sh
cd $ROOT/channel1/game1 && sh clear.sh
cd $ROOT/channel1/game2 && sh clear.sh

# Clear channel2
cd $ROOT/channel2/first && sh clear.sh
cd $ROOT/channel2/game1 && sh clear.sh
cd $ROOT/channel2/game2 && sh clear.sh

# Clear channel3
cd $ROOT/channel3/first && sh clear.sh
cd $ROOT/channel3/game1 && sh clear.sh
cd $ROOT/channel3/game2 && sh clear.sh

# Clear channel4
cd $ROOT/channel4/first && sh clear.sh
cd $ROOT/channel4/game1 && sh clear.sh
cd $ROOT/channel4/game2 && sh clear.sh

# Clear game99
cd $ROOT/game99 && sh clear.sh

sleep 2
echo -e "\033[32mServer cleared!\033[0m"
