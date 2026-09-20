# OmniRoute — rasmiy obraz ustiga faqat production sozlamalari.
# Railway/Render shu Dockerfile'ni o'zi topib ishga tushiradi.
FROM diegosouzapw/omniroute:latest

ENV NODE_ENV=production \
    API_HOST=0.0.0.0 \
    DATA_DIR=/data \
    AUTH_COOKIE_SECURE=true \
    REQUIRE_API_KEY=true \
    ALLOW_API_KEY_REVEAL=false \
    APP_LOG_TO_FILE=false \
    APP_LOG_FORMAT=json \
    CALL_LOG_RETENTION_DAYS=3

# Platforma PORT beradi (Railway/Render); bo'lmasa 20128.
EXPOSE 20128
