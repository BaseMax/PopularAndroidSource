.class Lcom/adyen/threeds2/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/h;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/adyen/threeds2/parameters/ConfigParameters;

.field private d:Lcom/adyen/threeds2/customization/UiCustomization;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/adyen/threeds2/internal/c/b;

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/SDKAlreadyInitializedException;
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    new-instance v0, Lcom/adyen/threeds2/exception/SDKAlreadyInitializedException;

    invoke-direct {v0}, Lcom/adyen/threeds2/exception/SDKAlreadyInitializedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 165
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/SDKNotInitializedException;
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Lcom/adyen/threeds2/exception/SDKNotInitializedException;

    invoke-direct {v0}, Lcom/adyen/threeds2/exception/SDKNotInitializedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 171
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/customization/UiCustomization;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/adyen/threeds2/internal/g;->d:Lcom/adyen/threeds2/customization/UiCustomization;

    return-object v0
.end method

.method public declared-synchronized cleanup(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/SDKNotInitializedException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/g;->c()V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->c:Lcom/adyen/threeds2/parameters/ConfigParameters;

    .line 141
    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->d:Lcom/adyen/threeds2/customization/UiCustomization;

    .line 142
    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->e:Ljava/util/List;

    .line 143
    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->f:Lcom/adyen/threeds2/internal/c/b;

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/adyen/threeds2/internal/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 137
    monitor-exit p0

    throw p1
.end method

.method public createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/adyen/threeds2/Transaction;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;,
            Lcom/adyen/threeds2/exception/SDKNotInitializedException;,
            Lcom/adyen/threeds2/exception/SDKRuntimeException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/g;->c()V

    .line 105
    invoke-static {p2}, Lcom/adyen/threeds2/internal/d;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/d;

    move-result-object p2

    .line 106
    iget-object v0, p0, Lcom/adyen/threeds2/internal/g;->f:Lcom/adyen/threeds2/internal/c/b;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/d;->d()Lcom/adyen/threeds2/internal/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/c/b;->a(Lcom/adyen/threeds2/internal/c/a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/adyen/threeds2/internal/g;->c:Lcom/adyen/threeds2/parameters/ConfigParameters;

    invoke-static {p1, v1}, Lcom/adyen/threeds2/internal/d/c;->a(Ljava/lang/String;Lcom/adyen/threeds2/parameters/ConfigParameters;)Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object v1

    .line 110
    move-object v2, v1

    check-cast v2, Lcom/adyen/threeds2/internal/h/b/b;

    invoke-static {v2, v0}, Lcom/adyen/threeds2/internal/c;->a(Lcom/adyen/threeds2/internal/h/b/b;Lorg/json/JSONObject;)Lcom/adyen/threeds2/internal/h/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/b/h;->e()Ljava/lang/String;

    move-result-object v4

    .line 113
    instance-of v0, v1, Lcom/adyen/threeds2/internal/h/c/c;

    if-eqz v0, :cond_0

    .line 114
    check-cast v1, Lcom/adyen/threeds2/internal/h/c/c;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/h/c/c;->g()V

    .line 117
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    iget-object v0, p0, Lcom/adyen/threeds2/internal/g;->b:Landroid/content/Context;

    invoke-static {}, Lcom/adyen/threeds2/internal/j/b;->a()Lcom/adyen/threeds2/internal/j/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/e;->a(Landroid/content/Context;Lcom/adyen/threeds2/internal/j/a;)Lcom/adyen/threeds2/internal/e;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/adyen/threeds2/internal/h/c/a;

    const/16 v2, 0xd

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/adyen/threeds2/internal/h/e/d;->P256:Lcom/adyen/threeds2/internal/h/e/d;

    invoke-direct {v1, v2, v5}, Lcom/adyen/threeds2/internal/h/c/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/e/d;)V

    .line 122
    new-instance v9, Lcom/adyen/threeds2/internal/i/a;

    .line 125
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/h/c/a;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/e;->a()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/e;->b()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/d;->c()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/adyen/threeds2/internal/i/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/adyen/threeds2/internal/g;->c:Lcom/adyen/threeds2/parameters/ConfigParameters;

    invoke-static {p1, p2}, Lcom/adyen/threeds2/internal/d/a;->a(Ljava/lang/String;Lcom/adyen/threeds2/parameters/ConfigParameters;)Ljava/util/List;

    move-result-object p1

    .line 133
    new-instance p2, Lcom/adyen/threeds2/internal/i;

    invoke-direct {p2, p1, v1, v9}, Lcom/adyen/threeds2/internal/i;-><init>(Ljava/util/List;Lcom/adyen/threeds2/internal/h/c/a;Lcom/adyen/threeds2/AuthenticationRequestParameters;)V

    return-object p2
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/SDKNotInitializedException;,
            Lcom/adyen/threeds2/exception/SDKRuntimeException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/g;->c()V

    const/16 v0, 0xe

    .line 152
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/g;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;Ljava/lang/String;Lcom/adyen/threeds2/customization/UiCustomization;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;,
            Lcom/adyen/threeds2/exception/SDKAlreadyInitializedException;,
            Lcom/adyen/threeds2/exception/SDKRuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/g;->b()V

    const/4 v0, 0x6

    .line 82
    invoke-static {v0}, Lcom/adyen/threeds2/internal/l/b;->a(I)V

    .line 85
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->APPLICATION_CONTEXT:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 86
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CONFIG_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 87
    invoke-static {p3}, Lcom/adyen/threeds2/internal/l/c;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->b:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/adyen/threeds2/internal/g;->c:Lcom/adyen/threeds2/parameters/ConfigParameters;

    .line 91
    iput-object p4, p0, Lcom/adyen/threeds2/internal/g;->d:Lcom/adyen/threeds2/customization/UiCustomization;

    .line 92
    iget-object p1, p0, Lcom/adyen/threeds2/internal/g;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/adyen/threeds2/internal/k/g;->a(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;)Lcom/adyen/threeds2/internal/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/k/g;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->e:Ljava/util/List;

    .line 93
    iget-object p1, p0, Lcom/adyen/threeds2/internal/g;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/adyen/threeds2/internal/g;->c:Lcom/adyen/threeds2/parameters/ConfigParameters;

    iget-object p3, p0, Lcom/adyen/threeds2/internal/g;->e:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/adyen/threeds2/internal/c/b;->a(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;Ljava/util/List;)Lcom/adyen/threeds2/internal/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/g;->f:Lcom/adyen/threeds2/internal/c/b;

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/adyen/threeds2/internal/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method
