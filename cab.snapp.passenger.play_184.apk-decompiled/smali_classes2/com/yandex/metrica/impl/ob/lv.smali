.class public Lcom/yandex/metrica/impl/ob/lv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/lw;


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/lu;",
            "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/metrica/impl/bi;

.field private final c:Lcom/yandex/metrica/impl/ob/ly;

.field private final d:Lcom/yandex/metrica/impl/ob/gc;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/lv$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lv$1;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/lv;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/bi;Lcom/yandex/metrica/impl/ob/gc;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->e:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->f:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->g:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    .line 57
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/lv;->d:Lcom/yandex/metrica/impl/ob/gc;

    .line 58
    new-instance p1, Lcom/yandex/metrica/impl/ob/ly;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/lv;->d:Lcom/yandex/metrica/impl/ob/gc;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/ly;-><init>(Lcom/yandex/metrica/impl/ob/gc;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    .line 59
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/lv;->d()V

    return-void
.end method

.method private d()V
    .locals 7

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 162
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 164
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/lv;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 165
    :try_start_0
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    sget-object v6, Lcom/yandex/metrica/impl/ob/ly$a;->a:Lcom/yandex/metrica/impl/ob/ly$a;

    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/ly;->a(Lcom/yandex/metrica/impl/ob/ly$a;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 168
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v5, v1}, Lcom/yandex/metrica/impl/ob/ly;->b(Ljava/util/Map;)V

    .line 176
    :cond_0
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    sget-object v6, Lcom/yandex/metrica/impl/ob/ly$a;->c:Lcom/yandex/metrica/impl/ob/ly$a;

    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/ly;->a(Lcom/yandex/metrica/impl/ob/ly$a;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->g:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 179
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/ly;->a(Ljava/util/Map;)V

    .line 186
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/metrica/IIdentifierCallback;

    .line 189
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/metrica/IIdentifierCallback;

    .line 193
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    goto :goto_1

    .line 196
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 199
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 200
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 186
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ly;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ly;->a(Landroid/os/Bundle;)V

    .line 105
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    .line 2028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 105
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/ly;->a(J)V

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/lv;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lv;->g:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ly$a;->c:Lcom/yandex/metrica/impl/ob/ly$a;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/ly;->a(Lcom/yandex/metrica/impl/ob/ly$a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1098
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bi;->c()V

    .line 92
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/lv;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ly;->b()Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-static {p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ly;->a(Ljava/util/List;)V

    .line 123
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/util/List;)V

    return-void

    .line 125
    :cond_0
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ly;->a(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/util/List;)V

    return-void

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/no;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ly;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .line 204
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lu;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/lu;

    move-result-object p1

    .line 2210
    sget-object v0, Lcom/yandex/metrica/impl/ob/lv;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 2212
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 2214
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 2217
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/lv;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 2218
    :try_start_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/lv;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2219
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/lv;->g:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2221
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/lv;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2222
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/lv;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2230
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/IIdentifierCallback;

    .line 2233
    invoke-interface {v3, p1}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    goto :goto_0

    .line 2236
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/IIdentifierCallback;

    .line 2237
    invoke-interface {v3, p1}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    goto :goto_1

    .line 2240
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2241
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 2230
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public c()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ly$a;->c:Lcom/yandex/metrica/impl/ob/ly$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ly;->a(Lcom/yandex/metrica/impl/ob/ly$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->c:Lcom/yandex/metrica/impl/ob/ly;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ly;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lv;->b:Lcom/yandex/metrica/impl/bi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bi;->c()V

    :cond_1
    return-void
.end method
