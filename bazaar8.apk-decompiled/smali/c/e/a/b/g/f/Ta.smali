.class public final Lc/e/a/b/g/f/Ta;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/Pa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/La;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/Ta;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)[B
    .locals 2

    .line 1
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
