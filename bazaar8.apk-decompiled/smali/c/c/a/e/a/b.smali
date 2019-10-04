.class public final Lc/c/a/e/a/b;
.super Lb/z/a/a;
.source "RoomMigration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/z/a/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DELETE FROM played_video  WHERE title IS \'\'"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
