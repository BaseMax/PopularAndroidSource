.class public Lc/c/a/e/d/h/e/a/a/d;
.super Lb/z/C;
.source "DownloadedVideoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/e/a/a/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/h/e/a/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/a/h;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a/d;->d:Lc/c/a/e/d/h/e/a/a/h;

    invoke-direct {p0, p2}, Lb/z/C;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM downloadedVideo WHERE videoId = ?"

    return-object v0
.end method
