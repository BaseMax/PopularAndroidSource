.class public Lj/a/a/f;
.super Lj/a/a/i;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/h;->x()Lk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lj/a/a/h;


# direct methods
.method public constructor <init>(Lj/a/a/h;Lk/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/f;->c:Lj/a/a/h;

    invoke-direct {p0, p2}, Lj/a/a/i;-><init>(Lk/y;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj/a/a/f;->c:Lj/a/a/h;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj/a/a/h;->n:Z

    return-void
.end method
