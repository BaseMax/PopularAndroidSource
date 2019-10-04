.class public final Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;
.super Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;
.source "PaymentDatabase_Impl.java"


# instance fields
.field public volatile l:Lc/c/a/e/d/m/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:Lb/C/a/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;Lb/C/a/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lb/z/c;)Lb/C/a/c;
    .locals 4

    .line 3
    new-instance v0, Lb/z/w;

    new-instance v1, Lc/c/a/e/d/m/a/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lc/c/a/e/d/m/a/b;-><init>(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;I)V

    const-string v2, "51c4b7ade068c49616a702f2f9419546"

    const-string v3, "fb8d8cfe6372033a13b8861b682b3b87"

    invoke-direct {v0, p1, v1, v2, v3}, Lb/z/w;-><init>(Lb/z/c;Lb/z/w$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Lb/z/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lb/C/a/c$b;->a(Landroid/content/Context;)Lb/C/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Lb/z/c;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Lb/C/a/c$b$a;->a(Ljava/lang/String;)Lb/C/a/c$b$a;

    .line 6
    invoke-virtual {v1, v0}, Lb/C/a/c$b$a;->a(Lb/C/a/c$a;)Lb/C/a/c$b$a;

    .line 7
    invoke-virtual {v1}, Lb/C/a/c$b$a;->a()Lb/C/a/c$b;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lb/z/c;->a:Lb/C/a/c$c;

    invoke-interface {p1, v0}, Lb/C/a/c$c;->a(Lb/C/a/c$b;)Lb/C/a/c;

    move-result-object p1

    return-object p1
.end method

.method public d()Lb/z/j;
    .locals 6

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    new-instance v3, Lb/z/j;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "payments"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Lb/z/j;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method public p()Lc/c/a/e/d/m/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->l:Lc/c/a/e/d/m/a/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->l:Lc/c/a/e/d/m/a/f;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->l:Lc/c/a/e/d/m/a/f;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/m/a/o;

    invoke-direct {v0, p0}, Lc/c/a/e/d/m/a/o;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->l:Lc/c/a/e/d/m/a/f;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->l:Lc/c/a/e/d/m/a/f;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
