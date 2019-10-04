.class public final Lc/e/a/a/e/f/k$b;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lc/e/a/a/e/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/e/f/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/a/e/f/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a()Lc/e/a/a/e/o;
    .locals 3

    .line 1
    new-instance v0, Lc/e/a/a/e/o$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lc/e/a/a/e/o$b;-><init>(J)V

    return-object v0
.end method

.method public c(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
