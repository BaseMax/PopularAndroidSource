.class public final Lc/c/a/n/r/b;
.super Ljava/lang/Object;
.source "AppChildMyBazaarFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/r/c;->b(Landroid/os/Bundle;)V
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
.field public final synthetic a:Lc/c/a/n/r/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/r/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/b;->a:Lc/c/a/n/r/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/user/User;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lc/c/a/n/r/b;->a:Lc/c/a/n/r/c;

    invoke-static {p1}, Lc/c/a/n/r/c;->b(Lc/c/a/n/r/c;)I

    move-result v0

    iget-object v1, p0, Lc/c/a/n/r/b;->a:Lc/c/a/n/r/c;

    invoke-static {v1}, Lc/c/a/n/r/c;->a(Lc/c/a/n/r/c;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/c/a/n/r/f;->c(II)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/user/User;

    invoke-virtual {p0, p1}, Lc/c/a/n/r/b;->a(Lcom/farsitel/bazaar/common/model/user/User;)V

    return-void
.end method
