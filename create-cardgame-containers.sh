docker network create cardgamenetwork
docker run --name cardgame-dbservice --network cardgamenetwork -d --hostname mongo mongo:4.0
docker run --name cardgame-lookupservice --network cardgamenetwork -d --hostname lookupservice stevenckwong/cardgame-lookupservice:1.0.0
docker run --name cardgame-commcalcservice --network cardgamenetwork -d --hostname commcalcservice stevenckwong/cardgame-commcalcservice:1.0.0
docker run --name cardgame-app -p 8888:8080 --network cardgamenetwork -d --hostname cardgameapp stevenckwong/cardgame-app:1.0.0

# Access the application at http://localhost:8888/CardGame
open http://localhost:8888/CardGame