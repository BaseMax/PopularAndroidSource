.class public Lorg/eclipse/paho/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Lorg/eclipse/paho/a/a/b/b;

.field c:Ljava/util/Hashtable;

.field d:Lorg/eclipse/paho/a/a/p;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->d:Lorg/eclipse/paho/a/a/p;

    .line 58
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    .line 60
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/f;->e:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v1, "<Init>"

    const-string v2, "308"

    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/eclipse/paho/a/a/a/a/o;)Lorg/eclipse/paho/a/a/o;
    .locals 11

    .line 111
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/o;

    .line 116
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v8, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v9, "restoreToken"

    const-string v10, "302"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    invoke-interface {v7, v8, v9, v10, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Lorg/eclipse/paho/a/a/o;

    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/f;->e:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/eclipse/paho/a/a/o;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v7, v2, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v7, v1}, Lorg/eclipse/paho/a/a/a/q;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v7, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v8, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v9, "restoreToken"

    const-string v10, "303"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    invoke-interface {v7, v8, v9, v10, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final a(Lorg/eclipse/paho/a/a/v;Ljava/lang/String;)V
    .locals 8

    .line 149
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "saveToken"

    const-string v4, "307"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v1, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/a/a/a/q;->setKey(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->d:Lorg/eclipse/paho/a/a/p;

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v4, "saveToken"

    const-string v5, "300"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Ljava/lang/String;)V

    .line 133
    monitor-exit v0

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/f;->d:Lorg/eclipse/paho/a/a/p;

    throw p1

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 5

    .line 230
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "clear"

    const-string v4, "305"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public count()I
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutstandingDelTokens()[Lorg/eclipse/paho/a/a/o;
    .locals 5

    .line 182
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "getOutstandingDelTokens"

    const-string v4, "311"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 187
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 189
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/paho/a/a/o;

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/paho/a/a/o;

    monitor-exit v0

    return-object v1

    .line 190
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/a/a/v;

    if-eqz v3, :cond_0

    .line 192
    instance-of v4, v3, Lorg/eclipse/paho/a/a/o;

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, v3, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/q;->isNotified()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getOutstandingTokens()Ljava/util/Vector;
    .locals 5

    .line 207
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "getOutstandingTokens"

    const-string v4, "312"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 212
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 214
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    monitor-exit v0

    return-object v1

    .line 215
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/a/a/v;

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getToken(Ljava/lang/String;)Lorg/eclipse/paho/a/a/v;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/a/a/v;

    return-object p1
.end method

.method public getToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;
    .locals 1

    .line 73
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/a/a/v;

    return-object p1
.end method

.method public open()V
    .locals 5

    .line 171
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "open"

    const-string v4, "310"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/f;->d:Lorg/eclipse/paho/a/a/p;

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeToken(Ljava/lang/String;)Lorg/eclipse/paho/a/a/v;
    .locals 5

    .line 92
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "removeToken"

    const-string v4, "306"

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/a/a/v;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/a/a/a/f;->removeToken(Ljava/lang/String;)Lorg/eclipse/paho/a/a/v;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 242
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 247
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 248
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/a/a/v;

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 244
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
