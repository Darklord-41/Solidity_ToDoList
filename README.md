# Solidity_ToDoList
A simple To-Do List Project made using Solidity ETH Blockchain

# 📝 Todo List DApp (Ethereum-based)

This is a simple decentralized to-do list application built using:

- 🔧 **Solidity** for Smart Contract  
- 🌐 **Remix IDE** for compilation & deployment  
- 🦊 **MetaMask** for wallet & network connection  
- ⚙️ **Ganache** for local Ethereum blockchain  
- 🎨 **HTML/CSS/Javascript** for the frontend (interacting with smart contract)


---

## ✅ Prerequisites

Before running, install or set up the following:

- [MetaMask Extension](https://metamask.io/)
- [Ganache](https://trufflesuite.com/ganache/) – Desktop App
- [Remix IDE](https://remix.ethereum.org/) – Use in Chrome (avoid Brave)
- Code editor (VSCode preferred) for editing frontend

---

## 🚀 Steps to Run the DApp

### 1. **Start Ganache**
- Open Ganache and start a new **workspace or Quickstart Ethereum chain**.
- Note the RPC Server (usually `http://127.0.0.1:7545`)
- Note the private key of any account (click 🔑 icon)

---

### 2. **Configure MetaMask**
- Open MetaMask and add a new **Custom Network**:
- Network Name: Ganache
- New RPC URL: http://127.0.0.1:7545
- Chain ID: 1337 (or 5777 depending on Ganache config)
- Currency: ETH

- Import a Ganache account using private key (from step above).
- Select this Ganache network in MetaMask.

---

### 3. **Compile Smart Contract in Remix**
- Open [Remix](https://remix.ethereum.org/)
- Paste your `TodoList.sol` into a new file under `contracts/`
- Go to **Solidity Compiler** → Select version `0.8.x` → Compile

---

### 4. **Deploy with MetaMask (Injected Provider)**
- Go to **Deploy & Run Transactions** tab
- Environment: `Injected Provider - MetaMask`
- MetaMask will ask to connect → Allow
- Select contract `TodoList` and click **Deploy**
- Confirm transaction in MetaMask

---

### 5. **Connect Frontend**

1. In the `frontend/` folder:
  - Add your contract's **deployed address**

2. Your `index.html` should have:
```js
const contractAddress = "YOUR_DEPLOYED_CONTRACT_ADDRESS";
```

3. Open `index.html` in a browser:
    - MetaMask should prompt to connect
    - Use UI to add/complete/delete tasks

---

## 📃 License

This project is licensed under the **MIT License**.

