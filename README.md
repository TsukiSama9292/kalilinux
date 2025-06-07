# Kali Linux Docker Container

本專案提供一個簡易的 Kali Linux Docker 容器環境，適用於網路偵測與滲透測試工具的快速使用。

---

## 啟動容器

使用以下指令透過 Docker Compose 啟動容器：

```bash
docker compose up -d
```

---

## 進入容器

```bash
docker exec -it kalilinux bash
```

---

## 工具使用

### nmap — 掃描 IP 與端口服務

用於掃描指定目標的開放端口與服務版本：

```bash
nmap -sV 192.168.0.1
```

### traceroute — 追蹤網頁路由

追蹤資料封包到達目標網站時所經過的節點路由：

```bash
traceroute example.com
```

### tcptraceroute — TCP 路由追蹤工具

使用 TCP 封包進行路由追蹤，適用於部分 ICMP 被封鎖的情況：

```bash
tcptraceroute example.com 80
```

---

## 注意事項

* 建議使用具有 root 權限的容器執行工具。
* 本容器預設不含 GUI，純終端操作。
* 如需更多 Kali 工具，可執行 `apt install <tool-name>` 安裝。