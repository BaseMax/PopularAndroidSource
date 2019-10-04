.class public final Lc/c/a/n/c/c/j;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/j;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/j;->a:Lc/c/a/n/c/c/n;

    invoke-static {v0}, Lc/c/a/n/c/c/n;->c(Lc/c/a/n/c/c/n;)Lc/c/a/n/c/c/t;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/j;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V

    return-void
.end method
