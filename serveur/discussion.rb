$LOAD_PATH << File.dirname(__FILE__) + "/lib"
require "web_socket"
require "thread"

Thread.abort_on_exception = true

# Création serveur
server = WebSocketServer.new(
  :accepted_domains => ["*"],
  :port => 10000
)

puts("Le serveur de la salle de discussion écoute sur le port %d" % server.port)
connections = []

server.run() do |websocket|
  begin

  # Nouvelle connexion
  puts("Connexion entrante acceptée")
  websocket.handshake()
  queue = Queue.new()
  connections.push(queue)

  # Broadcast vers tous les clients des messages en files d'attentes
  thread = Thread.new() do
    while true
      message = queue.pop()
      websocket.send(message)
      puts("Envoyé : #{message}")
    end
  end

  # Mise en files d'attentes du message reçu
  while data = websocket.receive()
    puts("Reçu : #{data}")
    for connection in connections
      connection.push(data)
    end
  end

  ensure
    # Terminaison des connexions
    connections.delete(queue)
    thread.terminate() if thread
    puts("Connexion fermée")
  end
end