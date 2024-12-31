sudo apt install build-essential
sudo apt install git -y
sudo apt install screen
screen -S t3rn
wget https://github.com/t3rn/executor-release/releases/download/v0.32.0/executor-linux-v0.32.0.tar.gz
tar -xvzf executor-linux-v0.32.0.tar.gz
cd executor/executor/bin
export NODE_ENV=testnet
export LOG_LEVEL=debug
export LOG_PRETTY=false
export EXECUTOR_PROCESS_ORDERS=true
export EXECUTOR_PROCESS_CLAIMS=true
export EXECUTOR_PROCESS_PENDING_ORDERS_FROM_API=false
export RPC_ENDPOINTS_ARBT=''
export RPC_ENDPOINTS_OPSP=''
export RPC_ENDPOINTS_L1RN='https://brn.rpc.caldera.xyz'
export ENABLED_NETWORKS='base-sepolia,arbitrum-sepolia,optimism-sepolia,blast-sepolia,l1rn'
export EXECUTOR_MAX_L3_GAS_PRICE=200


export PRIVATE_KEY_LOCAL=ENTER YOUR_PRIVATKEY

./executor
