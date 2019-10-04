.class public final Lb/z/a;
.super Ljava/lang/Object;
.source "CoroutinesRoom.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/z/a$a;
    }
.end annotation


# static fields
.field public static final a:Lb/z/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/z/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/z/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lb/z/a;->a:Lb/z/a$a;

    return-void
.end method

.method public static final a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;
    .locals 1
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

    sget-object v0, Lb/z/a;->a:Lb/z/a$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lb/z/a$a;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
