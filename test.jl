using Sockets

server = listen(8000)

accept(server) do io
    message = readline(io)
    write(io, "hello anh em")
end

while true
    println("Server started...")
    conn = accept(server)
    @async begin
        while true
            line = readline(conn)
            println("Client sent: ", line)
            #  print("Server: ")
            #  your_message = readline() * '\n'
            #  write(conn, your_message)
        end
    end
end




