package com.pusher.client.channel;

import java.util.Set;

public interface d extends f {
    void onUsersInformationReceived(String str, Set<h> set);

    void userSubscribed(String str, h hVar);

    void userUnsubscribed(String str, h hVar);
}
