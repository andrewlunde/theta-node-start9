docker rm edgelauncher

docker run -e EDGELAUNCHER_CONFIG_PATH=/edgelauncher/data/mainnet -e PASSWORD=LivinOnDaEdge -v ~/.edgelauncher:/edgelauncher/data/mainnet -p 127.0.0.1:15888:15888 -p 127.0.0.1:17888:17888 -p 127.0.0.1:17935:17935 --name edgelauncher -it thetalabsorg/edgelauncher_mainnet:latest
