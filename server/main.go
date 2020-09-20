package main

import (
	"encoding/json"
	"fmt"
	gosocketio "github.com/graarh/golang-socketio"
	"github.com/graarh/golang-socketio/transport"
	"github.com/rs/cors"
	"log"
	"net/http"
)


func main() {
	//create
	server := gosocketio.NewServer(transport.GetDefaultWebsocketTransport())

	//handle connected
	server.On(gosocketio.OnConnection, func(c *gosocketio.Channel) {
		log.Println("New client connected")
		fmt.Println(c.Id())
		c.Join("chat")
		c.Emit("connected", c.Id())
		//join them to room
	})

	server.On(gosocketio.OnDisconnection, func(c *gosocketio.Channel) {
		log.Println("Bye !")
	})

	type Message struct {
		UserId int `json:"userId"`
		Message string `json:"message"`
	}

	server.On("message", func(c *gosocketio.Channel, msg string)  {
		var message Message
		json.Unmarshal([]byte(msg), &message)
		fmt.Println(message.UserId)
		fmt.Println(message.Message)
		//send event to all in room
		c.Join("chat")
		c.BroadcastTo("chat", "message", message)
	})

	//setup http server
	serveMux := http.NewServeMux()
	serveMux.Handle("/socket.io/", server)
	c := cors.New(cors.Options{
		AllowedOrigins: []string{"*"}, // set up cors .. add your host
		AllowCredentials: true,
	})
	handler := c.Handler(serveMux)
	log.Panic(http.ListenAndServe(":8000", handler))
}