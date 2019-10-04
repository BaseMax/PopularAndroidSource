.class public final Lc/c/a/n/r/s;
.super Ljava/lang/Object;
.source "VideoChildMyBazaarFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/r/t;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/common/model/user/User;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/r/t;


# direct methods
.method public constructor <init>(Lc/c/a/n/r/t;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/s;->a:Lc/c/a/n/r/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/user/User;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lc/c/a/n/r/s;->a:Lc/c/a/n/r/t;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Lc/c/a/n/r/f;->b(Lc/c/a/n/r/f;IIILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/user/User;

    invoke-virtual {p0, p1}, Lc/c/a/n/r/s;->a(Lcom/farsitel/bazaar/common/model/user/User;)V

    return-void
.end method
