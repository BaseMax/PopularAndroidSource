package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.jz;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class UserProfile {

    /* renamed from: a  reason: collision with root package name */
    private final List<UserProfileUpdate<? extends jz>> f6537a;

    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedList<UserProfileUpdate<? extends jz>> f6538a = new LinkedList<>();

        Builder() {
        }

        public Builder apply(UserProfileUpdate<? extends jz> userProfileUpdate) {
            this.f6538a.add(userProfileUpdate);
            return this;
        }

        public UserProfile build() {
            return new UserProfile(this.f6538a, (byte) 0);
        }
    }

    /* synthetic */ UserProfile(List list, byte b2) {
        this(list);
    }

    private UserProfile(List<UserProfileUpdate<? extends jz>> list) {
        this.f6537a = Collections.unmodifiableList(list);
    }

    public List<UserProfileUpdate<? extends jz>> getUserProfileUpdates() {
        return this.f6537a;
    }

    public static Builder newBuilder() {
        return new Builder();
    }
}
