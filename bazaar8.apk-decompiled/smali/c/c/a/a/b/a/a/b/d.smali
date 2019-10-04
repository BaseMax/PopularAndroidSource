.class public Lc/c/a/a/b/a/a/b/d;
.super Lb/z/C;
.source "ActionLogDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/b/a/a/b/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/a/b/a/a/b/e;


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/b/e;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/a/b/a/a/b/d;->d:Lc/c/a/a/b/a/a/b/e;

    invoke-direct {p0, p2}, Lb/z/C;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM actionLog"

    return-object v0
.end method
