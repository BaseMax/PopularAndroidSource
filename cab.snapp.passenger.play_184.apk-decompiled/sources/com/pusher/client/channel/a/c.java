package com.pusher.client.channel.a;

import com.pusher.client.channel.ChannelState;
import com.pusher.client.channel.a;
import com.pusher.client.channel.b;

public interface c extends a, Comparable<c> {
    b getEventListener();

    void onMessage(String str, String str2);

    void setEventListener(b bVar);

    String toSubscribeMessage();

    String toUnsubscribeMessage();

    void updateState(ChannelState channelState);
}
