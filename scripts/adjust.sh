# FILENAME に拡張子(.mp3)は含めない
# GAIN_DIFF は 89dB からの差分
# (例) 標準の89dBに対し、さらに +5dB（計94dB）底上げする場合
#   mp3gain -r -d 5.0 music.mp3

docker-compose run --rm app sh -c "/app/scripts/adjust.sh"
docker-compose down
