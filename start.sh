if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PiroLeader/jack-filter-bot /jack-filter-bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /jack-filter-bot
fi
cd /jack-filter-bot 
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
