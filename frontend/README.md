# Frontend - Agent Arena Demo

This is a complete example of gasless payments with BEP0.

## What It Does

User flow:
1. Connect MetaMask
2. Approve USDT (one-time)
3. Sign payment message (0 gas!)
4. Backend settles payment
5. User receives BEP0 tokens

## Setup

### Update Configuration

Edit `index.html` line 308:
```javascript
facilitatorUrl: "http://localhost:3402",  // Change this!
```

Replace with your Railway URL:
```javascript
facilitatorUrl: "https://your-bep0-service.up.railway.app",
```

### Update Contract Addresses

Lines 295-300, update with your deployed addresses:
```javascript
usdt: "0x337610d27c682E347C9cD60BD4b3b107C9d34dDd",      // BSC Testnet USDT
relayer: "0x9656F25Ad9bef105FBaF8e5fE4fe6A0e159DE84E",                    // Your deployed BEP0Relayer
rewardToken: "0x9656F25Ad9bef105FBaF8e5fE4fe6A0e159DE84E",                    // Your reward token
agentWallet: "0xf9909beA4c20A9d44e053122fcEd2A5A68F87Fc9",                    // Where you receive USDT
```

## Run Locally

```bash
# Simple HTTP server
python3 -m http.server 8000

# Or use Node
npx http-server
```

Open http://localhost:8000

## Deploy

### Option 1: Vercel
```bash
vercel deploy
```

### Option 2: Netlify
```bash
netlify deploy
```

### Option 3: GitHub Pages
1. Push to GitHub
2. Enable GitHub Pages
3. Done!

## Testing

1. Make sure you're on BSC Testnet
2. Get testnet USDT from faucet
3. Connect wallet
4. Try the payment!

## Testnet Resources

**USDT Faucet:**
https://testnet.binance.org/faucet-smart

**BNB Faucet:**
https://testnet.bnbchain.org/faucet-smart

**Explorer:**
https://testnet.bscscan.com

## Customization

Update these sections:
- Line 35: Page title
- Line 237: "Agent Arena" branding  
- Line 238: Payment description
- Line 260-266: Balance display
- Line 271-280: Payment details

## Production Checklist

Before going live:
- [ ] Update facilitatorUrl to Railway
- [ ] Update all contract addresses
- [ ] Change to mainnet (chainId: 56)
- [ ] Update RPC URL to mainnet
- [ ] Test with small amounts first
- [ ] Add error handling
- [ ] Add analytics

## That's It!

This is a fully functional payment interface. Customize it for your use case!
