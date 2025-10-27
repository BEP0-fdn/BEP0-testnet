#!/bin/bash

# 🚀 BEP0 Complete Deployment Script
# Run this after you've funded your wallet with testnet BNB

echo "🚀 BEP0 Deployment Script"
echo "========================="
echo ""

# Configuration
export DEPLOYER_PRIVATE_KEY="0x790143bdb7f15702a56aa39d7efe182274466a59cb23c57aacc56b68349f7fc6"
export NETWORK="testnet"
export RPC_URL="https://weathered-side-haze.bsc-testnet.quiknode.pro/8d6f63932ca5583da9409799f676bed0dd86a727/"

echo "📋 Configuration:"
echo "   Network: testnet"
echo "   Relayer: 0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9"
echo "   RPC: weathered-side-haze.bsc-testnet.quiknode.pro"
echo ""

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this from the bep0-complete directory"
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
npm install

echo ""
echo "💰 Checking wallet balance..."
echo "   Visit: https://testnet.bscscan.com/address/0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9"
echo ""

read -p "Have you funded your wallet with testnet BNB? (y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo ""
    echo "⚠️  Please fund your wallet first!"
    echo "   Go to: https://testnet.bnbchain.org/faucet-smart"
    echo "   Address: 0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9"
    echo ""
    exit 1
fi

echo ""
echo "🚀 Deploying BEP0RelayerV2 contract..."
echo ""

npx tsx scripts/deploy-relayer-v2.ts

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📝 Next steps:"
echo "   1. Copy the contract address from above"
echo "   2. Update bep0-facilitator/.env with the contract address"
echo "   3. Deploy facilitator to Railway"
echo ""
