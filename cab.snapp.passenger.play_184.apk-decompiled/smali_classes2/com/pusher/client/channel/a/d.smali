.class public final Lcom/pusher/client/channel/a/d;
.super Lcom/pusher/client/channel/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/channel/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/channel/a/d$b;,
        Lcom/pusher/client/channel/a/d$c;,
        Lcom/pusher/client/channel/a/d$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/google/gson/e;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pusher/client/channel/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;Lcom/pusher/client/a/a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pusher/client/channel/a/e;-><init>(Lcom/pusher/client/connection/a/a;Ljava/lang/String;Lcom/pusher/client/b;Lcom/pusher/client/a/a;)V

    .line 28
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/channel/a/d;->d:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 179
    sget-object v0, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "data"

    .line 180
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^(?!presence-).*"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final bind(Ljava/lang/String;Lcom/pusher/client/channel/g;)V
    .locals 1

    .line 102
    instance-of v0, p2, Lcom/pusher/client/channel/d;

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/a/e;->bind(Ljava/lang/String;Lcom/pusher/client/channel/g;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only instances of PresenceChannelEventListener can be bound to a presence channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMe()Lcom/pusher/client/channel/h;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/pusher/client/channel/a/d;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/pusher/client/channel/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/h;

    return-object v0
.end method

.method public final getUsers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/h;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/pusher/client/channel/a/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 54
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/a/e;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pusher_internal:subscription_succeeded"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1185
    invoke-static {p2}, Lcom/pusher/client/channel/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1186
    sget-object p2, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    const-class v0, Lcom/pusher/client/channel/a/d$b;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/a/d$b;

    iget-object p1, p1, Lcom/pusher/client/channel/a/d$b;->presence:Lcom/pusher/client/channel/a/d$c;

    .line 1125
    iget-object p2, p1, Lcom/pusher/client/channel/a/d$c;->ids:Ljava/util/List;

    .line 1126
    iget-object p1, p1, Lcom/pusher/client/channel/a/d$c;->hash:Ljava/util/Map;

    if-eqz p2, :cond_1

    .line 1128
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1131
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    .line 1132
    :goto_1
    new-instance v3, Lcom/pusher/client/channel/h;

    invoke-direct {v3, v0, v2}, Lcom/pusher/client/channel/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v2, p0, Lcom/pusher/client/channel/a/d;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getEventListener()Lcom/pusher/client/channel/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1138
    check-cast p1, Lcom/pusher/client/channel/d;

    .line 1139
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getUsers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/pusher/client/channel/d;->onUsersInformationReceived(Ljava/lang/String;Ljava/util/Set;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "pusher_internal:member_added"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2145
    invoke-static {p2}, Lcom/pusher/client/channel/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2146
    sget-object p2, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    const-class v0, Lcom/pusher/client/channel/a/d$a;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/a/d$a;

    .line 2149
    iget-object p2, p1, Lcom/pusher/client/channel/a/d$a;->userId:Ljava/lang/String;

    .line 2150
    iget-object v0, p1, Lcom/pusher/client/channel/a/d$a;->userInfo:Ljava/lang/Object;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    iget-object p1, p1, Lcom/pusher/client/channel/a/d$a;->userInfo:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2152
    :cond_4
    new-instance p1, Lcom/pusher/client/channel/h;

    invoke-direct {p1, p2, v1}, Lcom/pusher/client/channel/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcom/pusher/client/channel/a/d;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getEventListener()Lcom/pusher/client/channel/b;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2157
    check-cast p2, Lcom/pusher/client/channel/d;

    .line 2158
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/pusher/client/channel/d;->userSubscribed(Ljava/lang/String;Lcom/pusher/client/channel/h;)V

    :cond_5
    return-void

    :cond_6
    const-string v0, "pusher_internal:member_removed"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2165
    invoke-static {p2}, Lcom/pusher/client/channel/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2166
    sget-object p2, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    const-class v0, Lcom/pusher/client/channel/a/d$a;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/a/d$a;

    .line 2168
    iget-object p2, p0, Lcom/pusher/client/channel/a/d;->d:Ljava/util/Map;

    iget-object p1, p1, Lcom/pusher/client/channel/a/d$a;->userId:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/h;

    .line 2170
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getEventListener()Lcom/pusher/client/channel/b;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2172
    check-cast p2, Lcom/pusher/client/channel/d;

    .line 2173
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/pusher/client/channel/d;->userUnsubscribed(Ljava/lang/String;Lcom/pusher/client/channel/h;)V

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/pusher/client/channel/a/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[Presence Channel: name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toSubscribeMessage()Ljava/lang/String;
    .locals 9

    const-string v0, "channel_data"

    const-string v1, "auth"

    .line 71
    invoke-virtual {p0}, Lcom/pusher/client/channel/a/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 74
    :try_start_0
    sget-object v3, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 75
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2191
    sget-object v5, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-class v7, Ljava/util/Map;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "user_id"

    .line 2192
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pusher/client/channel/a/d;->e:Ljava/lang/String;

    .line 80
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "event"

    const-string v7, "pusher:subscribe"

    .line 81
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "channel"

    .line 84
    iget-object v8, p0, Lcom/pusher/client/channel/a/d;->a:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 88
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/pusher/client/channel/a/d;->c:Lcom/google/gson/e;

    invoke-virtual {v0, v5}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/pusher/client/a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to parse response from Authorizer: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/pusher/client/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
