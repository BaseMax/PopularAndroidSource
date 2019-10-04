.class public final Lc/c/a/n/c/c/l;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/m;->a(Lcom/farsitel/bazaar/core/model/Resource;)V
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/m;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/m;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/l;->a:Lc/c/a/n/c/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/l;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/l;->a:Lc/c/a/n/c/c/m;

    iget-object v0, v0, Lc/c/a/n/c/c/m;->a:Lc/c/a/n/c/c/n;

    invoke-static {v0}, Lc/c/a/n/c/c/n;->c(Lc/c/a/n/c/c/n;)Lc/c/a/n/c/c/t;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/t;->a(Ljava/util/Map;)V

    return-void
.end method
