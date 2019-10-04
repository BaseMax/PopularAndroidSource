.class public final Lc/c/a/n/c/d/q;
.super Ljava/lang/Object;
.source "ScrollableViewHolder.kt"

# interfaces
.implements Lc/c/a/n/c/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/o;->F()Lc/c/a/n/c/d/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/c/d/m<",
        "TSectionItem;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/d/o;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/d/q;->a:Lc/c/a/n/c/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSectionItem;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/q;->a:Lc/c/a/n/c/d/o;

    invoke-static {v0}, Lc/c/a/n/c/d/o;->a(Lc/c/a/n/c/d/o;)Lc/c/a/n/c/d/o$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/a/n/c/d/o$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
