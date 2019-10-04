package com.pusher.client.connection;

public interface a {
    void bind(ConnectionState connectionState, b bVar);

    void connect();

    String getSocketId();

    ConnectionState getState();

    boolean unbind(ConnectionState connectionState, b bVar);
}
