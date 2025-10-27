# 🚀 Mainnet Deployment Guide

You have BOTH testnet and mainnet configured!

## ✅ Your Configuration

### Testnet (Testing)
- **RPC:** weathered-side-haze.bsc-testnet.quiknode.pro
- **Chain ID:** 97
- **Use for:** Testing everything first

### Mainnet (Production) 
- **RPC:** fittest-billowing-rain.bsc.quiknode.pro
- **Chain ID:** 56
- **Use for:** Real users, real money

---

## 📋 Deployment Strategy

### Phase 1: Test on Testnet (Do This First!)

1. **Set NETWORK=testnet** in .env
2. Fund wallet with **testnet BNB** (free faucet)
3. Deploy contract to testnet
4. Deploy facilitator to Railway (testnet config)
5. Test everything thoroughly
6. Make sure it all works perfectly!

### Phase 2: Deploy to Mainnet (When Ready)

1. **Set NETWORK=mainnet** in .env
2. Fund wallet with **real BNB** (~0.1-1 BNB)
3. Deploy NEW contract to mainnet
4. Update Railway with mainnet variables
5. Go live!

---

## 🔧 How to Switch Networks

### In Your .env File:

**For Testnet:**
```env
NETWORK=testnet
BSC_TESTNET_RPC_URL=https://weathered-side-haze.bsc-testnet.quiknode.pro/...
BEP0_RELAYER_ADDRESS=0xYourTestnetContractAddress
```

**For Mainnet:**
```env
NETWORK=mainnet
BSC_RPC_URL=https://fittest-billowing-rain.bsc.quiknode.pro/...
BEP0_RELAYER_ADDRESS=0xYourMainnetContractAddress
```

### In Railway:

Just change these variables:
- `NETWORK` = `testnet` or `mainnet`
- `BEP0_RELAYER_ADDRESS` = corresponding contract address

---

## 💰 Cost Differences

### Testnet (Free!)
- ✅ Free BNB from faucet
- ✅ Test unlimited times
- ✅ No risk
- ✅ Practice everything

### Mainnet (Real Money)
- 💰 Need real BNB (~$30-300 to start)
- 💰 Each transaction costs ~$0.15 in gas
- ⚠️ Real money, real risk
- 💪 Real users, real business

---

## 📝 Mainnet Deployment Steps

### 1. Fund Your Wallet with Real BNB

**Buy BNB from exchange:**
- Binance, Coinbase, etc.
- Buy 0.1-1 BNB

**Send to your relayer wallet:**
```
0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9
```

⚠️ **IMPORTANT:** Use BSC network (BEP20), NOT Ethereum!

**Check balance:**
https://bscscan.com/address/0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9

### 2. Deploy Contract to Mainnet

```bash
cd bep0-complete
export DEPLOYER_PRIVATE_KEY="0x790143bdb7f15702a56aa39d7efe182274466a59cb23c57aacc56b68349f7fc6"
export NETWORK="mainnet"
npx tsx scripts/deploy-relayer-v2.ts
```

**Save the mainnet contract address!**

### 3. Update Railway Variables

In Railway dashboard, update:
```
NETWORK=mainnet
BEP0_RELAYER_ADDRESS=0xYourMainnetContractAddress
```

The RPC URL doesn't need to change - it's already configured!

### 4. Test Carefully!

Start with small amounts:
- Test with 1 USDT first
- Verify transaction goes through
- Check everything works
- Then scale up!

---

## ⚠️ Important Mainnet Warnings

### Security
- 🔒 Real money at risk
- 🔒 Keep private key ultra secure
- 🔒 Monitor wallet balance
- 🔒 Set up alerts

### Costs
- 💰 Each transaction = ~0.00025 BNB (~$0.15)
- 💰 1 BNB = ~4000 transactions
- 💰 Monitor and refill regularly

### Testing
- ✅ ALWAYS test on testnet first
- ✅ Test every feature thoroughly
- ✅ Only deploy to mainnet when confident

---

## 🎯 Recommended Approach

```
Week 1: Testnet Testing
- Deploy to testnet
- Test all features
- Fix any bugs
- Get comfortable

Week 2-3: Soft Launch (Mainnet)
- Deploy to mainnet
- Start with small volume
- Monitor closely
- Process 10-100 transactions

Week 4+: Scale Up
- Everything working smoothly
- Increase volume
- Onboard more users
- Profit! 💰
```

---

## 📊 Your Endpoints Summary

| Network | RPC URL | Purpose |
|---------|---------|---------|
| **Testnet** | weathered-side-haze.bsc-testnet.quiknode.pro | Testing |
| **Mainnet** | fittest-billowing-rain.bsc.quiknode.pro | Production |

Both are configured and ready to use! Just switch `NETWORK` variable.

---

## 🆘 Quick Commands

**Check testnet balance:**
```bash
cast balance 0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9 --rpc-url https://weathered-side-haze.bsc-testnet.quiknode.pro/8d6f63932ca5583da9409799f676bed0dd86a727/
```

**Check mainnet balance:**
```bash
cast balance 0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9 --rpc-url https://fittest-billowing-rain.bsc.quiknode.pro/406fd7253b5c30402e56abbb209f16b2818db968/
```

---

## ✅ You're All Set!

Both networks configured and ready. Start with testnet, then move to mainnet when ready! 🚀

**Next:** Follow START_HERE.md to deploy on testnet first!
