##

工具：https://book.getfoundry.sh/reference/cast/cast-call

## 部署

```bash
forge script script/DeployPurchase.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast --private-key $SELLER_PRIVATE_KEY
```

## 调用一个合约

### 读

查看商品价格：

```
cast call 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "value()(uint256)" --rpc-url $SEPOLIA_RPC_URL
```

查看卖家：

```bash
cast call 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "seller()(address)" --rpc-url $SEPOLIA_RPC_URL
```

查看买家：

```bash
cast call 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "buyer()(address)" --rpc-url $SEPOLIA_RPC_URL
```

查看状态：

```bash
cast call 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "state()(uint8)" --rpc-url $SEPOLIA_RPC_URL
```

### 写

购买：

```bash
cast send 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "confirmPurchase()" --value 20wei --private-key $BUYER_PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```

确认收货：

```bash
cast send 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "confirmReceived()"  --private-key $BUYER_PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```

退款：

```bash
cast send 0x998c58Ad6FdA347384d2fDeB42E7439411cBe096 "refundSeller()"  --private-key $SELLER_PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```
