.class public final Lj/a/c/b$a;
.super Lk/j;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(Lk/y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/j;-><init>(Lk/y;)V

    return-void
.end method


# virtual methods
.method public a(Lk/g;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lk/j;->a(Lk/g;J)V

    .line 2
    iget-wide v0, p0, Lj/a/c/b$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lj/a/c/b$a;->b:J

    return-void
.end method
