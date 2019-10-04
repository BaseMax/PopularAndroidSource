.class public final Lc/c/a/e/a/c;
.super Ljava/lang/Object;
.source "RoomMigration.kt"


# static fields
.field public static final a:Lb/z/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/c/a/e/a/b;

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lc/c/a/e/a/b;-><init>(II)V

    sput-object v0, Lc/c/a/e/a/c;->a:Lb/z/a/a;

    return-void
.end method

.method public static final a()Lb/z/a/a;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/e/a/c;->a:Lb/z/a/a;

    return-object v0
.end method
