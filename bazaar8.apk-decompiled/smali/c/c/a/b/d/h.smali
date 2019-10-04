.class public final Lc/c/a/b/d/h;
.super Ljava/lang/Object;
.source "EntityManager.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/d/i;->d(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/c/a/c/a<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/b/d/i;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/c/a/b/d/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/d/h;->a:Lc/c/a/b/d/i;

    iput-object p2, p0, Lc/c/a/b/d/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/b/d/h;->a:Lc/c/a/b/d/i;

    invoke-static {p1}, Lc/c/a/b/d/i;->a(Lc/c/a/b/d/i;)Lc/c/a/b/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/b/d/d;->a()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/b/d/h;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lc/c/a/b/d/h;->a(Lh/h;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    return-object p1
.end method
