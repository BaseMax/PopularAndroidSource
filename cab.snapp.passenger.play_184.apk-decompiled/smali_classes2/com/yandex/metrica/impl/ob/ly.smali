.class public Lcom/yandex/metrica/impl/ob/ly;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ly$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ljava/lang/String;

.field private final i:Lcom/yandex/metrica/impl/ob/gc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/gc;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    .line 43
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->d:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->e:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gc;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->f:Ljava/util/List;

    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->c:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/gc;->a(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/ly;->g:J

    .line 50
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->h:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->e()V

    return-void
.end method

.method private declared-synchronized b(J)V
    .locals 0

    monitor-enter p0

    .line 204
    :try_start_0
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ly;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Uuid"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3056
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3057
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "DeviceId"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/ly;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "DeviceIdHash"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ly;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AdUrlGet"

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ly;->c(Ljava/lang/String;)V

    :cond_0
    const-string v0, "AdUrlReport"

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ly;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 200
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->d:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->e:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ly;->g:J

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gc;->d(J)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->h:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gc;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gc;->i()V

    return-void
.end method

.method private declared-synchronized f()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ly;->c:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a([Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    .line 158
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method a(J)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/gc;->e(J)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gc;->i()V

    return-void
.end method

.method declared-synchronized a(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ly;->b(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ly;->c(Landroid/os/Bundle;)V

    const-string v0, "ServerTimeOffset"

    .line 1148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ly;->b(J)V

    const-string v0, "Clids"

    .line 2123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2124
    invoke-static {p1}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2125
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->h:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 188
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->f:Ljava/util/List;

    .line 144
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gc;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gc;

    return-void
.end method

.method declared-synchronized a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ly;->b(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ly;->c(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()Z
    .locals 7

    .line 3028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 134
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ly;->i:Lcom/yandex/metrica/impl/ob/gc;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/gc;->b(J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x15180

    cmp-long v2, v0, v5

    if-gtz v2, :cond_1

    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/ly$a;)Z
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ly$a;->c:Lcom/yandex/metrica/impl/ob/ly$a;

    if-ne v0, p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->h()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 69
    :cond_0
    :try_start_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/ly$a;->a:Lcom/yandex/metrica/impl/ob/ly$a;

    if-ne v0, p1, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->f()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 71
    :cond_1
    :try_start_2
    sget-object v0, Lcom/yandex/metrica/impl/ob/ly$a;->b:Lcom/yandex/metrica/impl/ob/ly$a;

    if-ne v0, p1, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ly;->g()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 75
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->f:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 192
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ly;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yandex_mobile_metrica_uuid"

    .line 80
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "yandex_mobile_metrica_device_id"

    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "appmetrica_device_id_hash"

    .line 88
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->a:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yandex_mobile_metrica_get_ad_url"

    .line 94
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "yandex_mobile_metrica_report_ad_url"

    .line 98
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ly;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ly;->b:Ljava/lang/String;

    return-object v0
.end method
