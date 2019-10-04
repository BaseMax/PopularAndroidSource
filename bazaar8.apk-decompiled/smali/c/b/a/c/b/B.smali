.class public Lc/b/a/c/b/B;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lc/b/a/i/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/i/a/d$a<",
        "Lc/b/a/c/b/C<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/c/b/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c/b/C<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lc/b/a/c/b/C;

    invoke-direct {v0}, Lc/b/a/c/b/C;-><init>()V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/b/B;->a()Lc/b/a/c/b/C;

    move-result-object v0

    return-object v0
.end method
