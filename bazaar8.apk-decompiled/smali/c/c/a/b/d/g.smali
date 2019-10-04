.class public final Lc/c/a/b/d/g;
.super Ljava/lang/Object;
.source "EntityManager.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/d/i;->c()Landroidx/lifecycle/LiveData;
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


# direct methods
.method public constructor <init>(Lc/c/a/b/d/i;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/d/g;->a:Lc/c/a/b/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/c/a/b/d/g;->a:Lc/c/a/b/d/i;

    invoke-static {p1}, Lc/c/a/b/d/i;->a(Lc/c/a/b/d/i;)Lc/c/a/b/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/b/d/d;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lc/c/a/b/d/g;->a(Lh/h;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
