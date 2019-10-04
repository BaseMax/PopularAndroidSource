.class public final Lcom/yandex/metrica/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    return-void
.end method

.method static a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/c;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0, p1, p2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lorg/a/c;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/y;
    .locals 0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->c()Lcom/yandex/metrica/impl/y;

    .line 66
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->b()Lcom/yandex/metrica/impl/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method final a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/c;

    .line 129
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "apps"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/c;

    .line 130
    new-instance v1, Lorg/a/a;

    invoke-direct {v1}, Lorg/a/a;-><init>()V

    const-string v2, "names"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a;

    .line 131
    new-instance v2, Lorg/a/a;

    invoke-direct {v2}, Lorg/a/a;-><init>()V

    const-string v3, "system_flags"

    invoke-static {v0, v3, v2}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a;

    .line 132
    new-instance v3, Lorg/a/a;

    invoke-direct {v3}, Lorg/a/a;-><init>()V

    const-string v4, "disabled_flags"

    invoke-static {v0, v4, v3}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/a/a;

    .line 133
    new-instance v4, Lorg/a/a;

    invoke-direct {v4}, Lorg/a/a;-><init>()V

    const-string v5, "first_install_time"

    invoke-static {v0, v5, v4}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/a/a;

    .line 135
    new-instance v5, Lorg/a/a;

    invoke-direct {v5}, Lorg/a/a;-><init>()V

    const-string v6, "last_update_time"

    invoke-static {v0, v6, v5}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/a/a;

    const/4 v6, 0x0

    const-string v7, "version"

    .line 138
    invoke-virtual {v0, v7, v6}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    .line 1238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 141
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/a/a;->put(Ljava/lang/Object;)Lorg/a/a;

    .line 142
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v7}, Lorg/a/a;->put(Z)Lorg/a/a;

    .line 143
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lorg/a/a;->put(Z)Lorg/a/a;

    .line 2151
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Lorg/a/a;->put(J)Lorg/a/a;

    .line 2155
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    div-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lorg/a/a;->put(J)Lorg/a/a;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method final a(Landroid/content/Context;Z)Lcom/yandex/metrica/impl/y;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/c;

    .line 84
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "au"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/c;

    .line 85
    new-instance v1, Lorg/a/a;

    invoke-direct {v1}, Lorg/a/a;-><init>()V

    const-string v2, "aun"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a;

    .line 86
    new-instance v2, Lorg/a/a;

    invoke-direct {v2}, Lorg/a/a;-><init>()V

    const-string v3, "ausf"

    .line 87
    invoke-static {v0, v3, v2}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a;

    .line 88
    new-instance v3, Lorg/a/a;

    invoke-direct {v3}, Lorg/a/a;-><init>()V

    const-string v4, "audf"

    .line 89
    invoke-static {v0, v4, v3}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/a/a;

    .line 90
    new-instance v4, Lorg/a/a;

    invoke-direct {v4}, Lorg/a/a;-><init>()V

    const-string v5, "aulu"

    .line 91
    invoke-static {v0, v5, v4}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/a/a;

    .line 92
    new-instance v5, Lorg/a/a;

    invoke-direct {v5}, Lorg/a/a;-><init>()V

    if-eqz p2, :cond_0

    const-string v6, "aufi"

    .line 94
    invoke-static {v0, v6, v5}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLk1BSU4="

    .line 100
    invoke-static {v8, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    const-string v10, "YW5kcm9pZC5pbnRlbnQuY2F0ZWdvcnkuTEFVTkNIRVI="

    .line 101
    invoke-static {v10, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v8, v10, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 99
    invoke-static {p1, v6, v8}, Lcom/yandex/metrica/impl/bv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 102
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 104
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/a/a;->put(Ljava/lang/Object;)Lorg/a/a;

    .line 105
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 106
    :goto_1
    invoke-virtual {v2, v9}, Lorg/a/a;->put(Z)Lorg/a/a;

    .line 107
    new-instance v11, Ljava/io/File;

    iget-object v12, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lorg/a/a;->put(J)Lorg/a/a;

    .line 108
    iget-boolean v11, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr v10, v11

    invoke-virtual {v3, v10}, Lorg/a/a;->put(Z)Lorg/a/a;

    if-eqz p2, :cond_1

    if-eqz v9, :cond_3

    .line 111
    invoke-virtual {v5, v7}, Lorg/a/a;->put(I)Lorg/a/a;

    goto :goto_0

    .line 113
    :cond_3
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/yandex/metrica/impl/bv;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-nez v8, :cond_4

    .line 115
    invoke-virtual {v5, v7}, Lorg/a/a;->put(I)Lorg/a/a;

    goto :goto_0

    .line 117
    :cond_4
    iget-wide v8, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lorg/a/a;->put(J)Lorg/a/a;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method final b()Lcom/yandex/metrica/impl/y;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/c;

    .line 1021
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 77
    div-long/2addr v1, v3

    const-string v3, "boot_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    return-object p0
.end method

.method final c()Lcom/yandex/metrica/impl/y;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "dfid"

    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/y;->a(Lorg/a/c;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/c;

    const/4 v1, 0x1

    .line 160
    invoke-static {v1}, Lcom/yandex/metrica/impl/av;->a(Z)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 161
    invoke-static {v4}, Lcom/yandex/metrica/impl/av;->a(Z)J

    move-result-wide v5

    .line 163
    invoke-static {v1}, Lcom/yandex/metrica/impl/av;->c(Z)J

    move-result-wide v7

    .line 164
    invoke-static {v4}, Lcom/yandex/metrica/impl/av;->c(Z)J

    move-result-wide v9

    add-long/2addr v2, v5

    const-string v1, "tds"

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    add-long/2addr v7, v9

    const-string v1, "fds"

    .line 167
    invoke-virtual {v0, v1, v7, v8}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->a:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
