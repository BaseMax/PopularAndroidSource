.class public final Lcab/snapp/passenger/data_access_layer/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcab/snapp/passenger/data_access_layer/a/c;


# instance fields
.field b:Lcab/snapp/passenger/data_access_layer/a/b;

.field c:I

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/b;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/a/b;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->b:Lcab/snapp/passenger/data_access_layer/a/b;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->c:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcab/snapp/passenger/data_access_layer/a/c;
    .locals 2

    const-class v0, Lcab/snapp/passenger/data_access_layer/a/c;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcab/snapp/passenger/data_access_layer/a/c;->a:Lcab/snapp/passenger/data_access_layer/a/c;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcab/snapp/passenger/data_access_layer/a/c;

    invoke-direct {v1}, Lcab/snapp/passenger/data_access_layer/a/c;-><init>()V

    sput-object v1, Lcab/snapp/passenger/data_access_layer/a/c;->a:Lcab/snapp/passenger/data_access_layer/a/c;

    .line 50
    :cond_0
    sget-object v1, Lcab/snapp/passenger/data_access_layer/a/c;->a:Lcab/snapp/passenger/data_access_layer/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 116
    monitor-exit p0

    return p1

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->b:Lcab/snapp/passenger/data_access_layer/a/b;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/a/b;->emit(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 120
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPrivateChannelId(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "c_id"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    .line 90
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    .line 1060
    iget v1, p0, Lcab/snapp/passenger/data_access_layer/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcab/snapp/passenger/data_access_layer/a/c;->c:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final varargs declared-synchronized getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/reactivex/e/g<",
            "TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/c;->b:Lcab/snapp/passenger/data_access_layer/a/b;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/a/b;->subscribe(ILio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method
