.class public final Lc/c/a/h/b/o;
.super Ljava/lang/Object;
.source "DatabaseModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/d/a/a;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->p()Lc/c/a/e/d/d/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;)Lc/c/a/e/d/m/a/f;
    .locals 1

    const-string v0, "paymentDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;->p()Lc/c/a/e/d/m/a/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Lcom/farsitel/bazaar/data/db/AppDatabase;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/farsitel/bazaar/data/db/AppDatabase;

    const-string v1, "data.db"

    invoke-static {p1, v0, v1}, Lb/z/u;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lb/z/a/a;

    .line 4
    invoke-static {}, Lc/c/a/e/a/c;->a()Lb/z/a/a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$a;->a([Lb/z/a/a;)Landroidx/room/RoomDatabase$a;

    .line 5
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    .line 6
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "Room\n        .databaseBu\u2026ration()\n        .build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/farsitel/bazaar/data/db/AppDatabase;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Lc/c/a/e/a/a/c;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/e/a/a/c;

    invoke-direct {v0, p1}, Lc/c/a/e/a/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/r/a/a/a;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->q()Lc/c/a/e/d/r/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/r/b/a/a;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->r()Lc/c/a/e/d/r/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;

    const-string v1, "payment_data.db"

    invoke-static {p1, v0, v1}, Lb/z/u;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    .line 4
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "Room\n        .databaseBu\u2026ration()\n        .build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase;

    return-object p1
.end method

.method public final d(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/b/e;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->s()Lc/c/a/e/d/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/h/e/a/a/a;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->t()Lc/c/a/e/d/h/e/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/b/o;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->u()Lc/c/a/e/d/b/o;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/n/a/a;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->v()Lc/c/a/e/d/n/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/farsitel/bazaar/data/db/AppDatabase;)Lc/c/a/e/d/b/L;
    .locals 1

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/db/AppDatabase;->w()Lc/c/a/e/d/b/L;

    move-result-object p1

    return-object p1
.end method
