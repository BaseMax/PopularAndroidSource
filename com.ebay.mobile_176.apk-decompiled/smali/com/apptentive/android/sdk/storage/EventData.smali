.class public Lcom/apptentive/android/sdk/storage/EventData;
.super Ljava/lang/Object;
.source "EventData.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/Saveable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/storage/EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private interactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/storage/EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private transient listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/EventData;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventCountForVersionCode(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/storage/EventRecord;->getCountForVersionCode(Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 p1, 0x0

    .line 104
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventCountForVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/storage/EventRecord;->getCountForVersionName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 p1, 0x0

    .line 120
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventCountTotal(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/EventRecord;->getTotal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInteractionCountForVersionCode(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/storage/EventRecord;->getCountForVersionCode(Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 p1, 0x0

    .line 112
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInteractionCountForVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/storage/EventRecord;->getCountForVersionName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 p1, 0x0

    .line 128
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInteractionCountTotal(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/EventRecord;->getTotal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 80
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTimeOfLastEventInvocation(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/EventRecord;->getLast()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 88
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTimeOfLastInteractionInvocation(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/EventRecord;->getLast()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 96
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p0

    throw p1
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/DataChangedListener;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/EventData;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    return-void
.end method

.method public declared-synchronized setEvents(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/storage/EventRecord;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    .line 152
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/EventData;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInteractions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/storage/EventRecord;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    .line 160
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/EventData;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeEventForCurrentAppVersion(DILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/apptentive/android/sdk/storage/EventRecord;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/EventRecord;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/apptentive/android/sdk/storage/EventRecord;->update(DLjava/lang/String;Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/EventData;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeInteractionForCurrentAppVersion(DILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/storage/EventRecord;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/apptentive/android/sdk/storage/EventRecord;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/EventRecord;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/apptentive/android/sdk/storage/EventRecord;->update(DLjava/lang/String;Ljava/lang/Integer;)V

    .line 64
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/EventData;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 133
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Events: "

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n\t"

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/storage/EventData;->events:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/storage/EventRecord;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/EventRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\nInteractions: "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n\t"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apptentive/android/sdk/storage/EventData;->interactions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apptentive/android/sdk/storage/EventRecord;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/EventRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 132
    monitor-exit p0

    throw v0
.end method
