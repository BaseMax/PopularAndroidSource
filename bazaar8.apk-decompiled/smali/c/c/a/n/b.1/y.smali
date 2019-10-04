.class public final Lc/c/a/n/b/y;
.super Ljava/lang/Object;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/y;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/y;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;->this$0:Lc/c/a/n/b/w;

    invoke-static {v0}, Lc/c/a/n/b/w;->b(Lc/c/a/n/b/w;)Lb/r/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/y;->a(Ljava/lang/Boolean;)V

    return-void
.end method
