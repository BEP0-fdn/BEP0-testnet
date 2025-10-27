# 🎯 YOUR BEP0 - READY TO DEPLOY!

Everything is configured with YOUR information. Just follow these steps!

## ✅ What's Already Configured

- ✅ Network: **BSC Testnet**
- ✅ RPC URL: **weathered-side-haze.bsc-testnet.quiknode.pro**
- ✅ Relayer Wallet: **0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9**
- ✅ Private Key: **In .env file (secret)**

---

## 🚀 Deploy in 5 Steps

### Step 1: Fund Your Wallet (5 minutes)

1. Go to: https://testnet.bnbchain.org/faucet-smart
2. Paste your address:
   ```
   0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9
   ```
3. Click "Give me BNB"
4. Wait 1-2 minutes
5. Check balance: https://testnet.bscscan.com/address/0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9

### Step 2: Deploy Contract (2 minutes)

```bash
# Extract the full bep0-complete.zip first
cd bep0-complete

# Run the deployment script
chmod +x deploy.sh
./deploy.sh
```

**OR manually:**
```bash
cd bep0-complete
npm install
export DEPLOYER_PRIVATE_KEY="0x790143bdb7f15702a56aa39d7efe182274466a59cb23c57aacc56b68349f7fc6"
export NETWORK="testnet"
npx tsx scripts/deploy-relayer-v2.ts
```

**Save the contract address!** It will look like: `0x123abc...`

### Step 3: Update Configuration (1 minute)

Open `bep0-facilitator/.env` and update this line:
```
BEP0_RELAYER_ADDRESS=0xYOUR_CONTRACT_ADDRESS_HERE
```

Replace with your deployed contract address from Step 2.

### Step 4: Push to GitHub (3 minutes)

```bash
cd bep0-facilitator

# Initialize git
git init
git add .
git commit -m "BEP0 facilitator configured"

# Create repo on GitHub, then:
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/bep0-facilitator.git
git push -u origin main
```

### Step 5: Deploy to Railway (5 minutes)

#### Option A: Dashboard (Easiest)

1. **Go to:** https://railway.app/new
2. **Click:** "Deploy from GitHub repo"
3. **Select:** Your `bep0-facilitator` repository
4. **Wait** for initial deploy (will show error - that's OK!)
5. **Click** on your service
6. **Go to** "Variables" tab
7. **Click** "RAW Editor"
8. **Paste** this (with YOUR contract address):
   ```
   NETWORK=testnet
   BSC_TESTNET_RPC_URL=https://weathered-side-haze.bsc-testnet.quiknode.pro/8d6f63932ca5583da9409799f676bed0dd86a727/
   RELAYER_PRIVATE_KEY=0x790143bdb7f15702a56aa39d7efe182274466a59cb23c57aacc56b68349f7fc6
   BEP0_RELAYER_ADDRESS=0xYOUR_DEPLOYED_CONTRACT_ADDRESS
   ```
9. **Click** "Save"
10. **Go to** Settings → Networking
11. **Click** "Generate Domain"
12. **Done!** Your URL: `https://bep0-facilitator-production-xxxx.up.railway.app`

#### Option B: CLI (Faster)

```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Deploy from bep0-facilitator directory
cd bep0-facilitator
railway init

# Set variables (replace YOUR_CONTRACT_ADDRESS)
railway variables set NETWORK=testnet
railway variables set BSC_TESTNET_RPC_URL="https://weathered-side-haze.bsc-testnet.quiknode.pro/8d6f63932ca5583da9409799f676bed0dd86a727/"
railway variables set RELAYER_PRIVATE_KEY="0x790143bdb7f15702a56aa39d7efe182274466a59cb23c57aacc56b68349f7fc6"
railway variables set BEP0_RELAYER_ADDRESS="0xYOUR_CONTRACT_ADDRESS"

# Deploy!
railway up

# Get your URL
railway domain
```

---

## ✅ Test Your Deployment

Once deployed, test your facilitator:

```bash
curl https://your-service.up.railway.app/health
```

Should return:
```json
{
  "status": "healthy",
  "service": "bep0-facilitator",
  "network": "bsc",
  "relayer": "0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9"
}
```

---

## 📊 Monitor Your Wallet

**Check balance anytime:**
https://testnet.bscscan.com/address/0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9

**You'll use ~0.00025 BNB per transaction**, so:
- 0.5 BNB = ~2000 transactions
- Perfect for testing!

---

## 🎉 You're Done!

Your facilitator will be live at:
```
https://your-app-name.up.railway.app
```

Use this URL in your frontend/SDK to process gasless payments!

---

## 📚 Quick Reference

| Item | Value |
|------|-------|
| **Network** | BSC Testnet (97) |
| **RPC** | weathered-side-haze.bsc-testnet.quiknode.pro |
| **Relayer** | 0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9 |
| **Explorer** | https://testnet.bscscan.com |
| **Faucet** | https://testnet.bnbchain.org/faucet-smart |

---

## 🆘 Troubleshooting

**"Insufficient funds" when deploying contract:**
→ Fund your wallet from the faucet

**Railway deployment fails:**
→ Check that all environment variables are set correctly
→ Look at Railway logs for specific error

**"Missing env vars" error:**
→ Make sure you set BEP0_RELAYER_ADDRESS after deploying contract

**Contract deployment fails:**
→ Make sure you have testnet BNB in your wallet
→ Check that NETWORK=testnet

---

## 📞 Files in This Package

- `.env` - Your configured environment file
- `deploy.sh` - One-click deployment script
- `RAILWAY_VARIABLES_READY.txt` - Copy/paste for Railway
- `YOUR_CONFIG.md` - Reference guide
- All facilitator source code ready to deploy!

---

**Ready? Start with Step 1!** 🚀

Get testnet BNB → Deploy contract → Update .env → Push to GitHub → Deploy to Railway → Done!
