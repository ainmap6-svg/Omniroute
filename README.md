# OmniRoute deploy — SOVEREIGN zaxira shlyuzi

Rasmiy `diegosouzapw/omniroute` obrazi + production sozlamalari. Kod yo'q, faqat deploy.

## Railway (tavsiya: 30 kun $5 kredit, keyin ~$5/oy)

1. railway.com -> **New Project** -> **Deploy from GitHub repo** -> shu repo
2. Xizmat -> **Variables** -> `.env.example` dagi 7 qiymatni qo'ying (`RAILWAY_RUN_UID=0` shart — busiz /data ga yozilmaydi)
3. **Settings -> Volumes -> Add Volume** -> mount path: `/data`  (sozlamalar restartda o'chmasin)
4. **Settings -> Networking -> Generate Domain** (port so'rasa: Railway bergan PORT, odatda 8080) -> manzilni `NEXT_PUBLIC_BASE_URL` ga yozing
5. Manzil -> parol bilan kiring -> **Endpoints -> Create API key**

## Render

**New -> Blueprint** -> shu repo. `render.yaml` Standard tarif + 1 GB disk.
Bepul sinov uchun `plan: free` qiling va `disk:` bo'limini o'chiring (sozlamalar restartda o'chadi).

## SOVEREIGN'ga ulash (Vercel env)

```
OMNIROUTE_BASE_URL=https://<manzil>/v1
OMNIROUTE_API_KEY=<yaratilgan kalit>
OMNIROUTE_MODEL=auto
```

Tekshirish: `curl https://<manzil>/v1/models -H "Authorization: Bearer <kalit>"`
