.class public final Lb/z/a$a;
.super Ljava/lang/Object;
.source "CoroutinesRoom.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/z/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lh/c/b<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p4}, Lh/c/b;->b()Lh/c/e;

    move-result-object v0

    sget-object v1, Lb/z/D;->a:Lb/z/D$a;

    invoke-interface {v0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v0

    check-cast v0, Lb/z/D;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/z/D;->a()Lh/c/c;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-static {p1}, Lb/z/b;->b(Landroidx/room/RoomDatabase;)Li/a/C;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lb/z/b;->a(Landroidx/room/RoomDatabase;)Li/a/C;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 5
    :goto_1
    new-instance p1, Landroidx/room/CoroutinesRoom$Companion$execute$2;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Landroidx/room/CoroutinesRoom$Companion$execute$2;-><init>(Ljava/util/concurrent/Callable;Lh/c/b;)V

    invoke-static {v0, p1, p4}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
