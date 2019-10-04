.class public final Lc/c/a/n/c/c/o;
.super Ljava/lang/Object;
.source "PageViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V
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
.field public final synthetic a:Lc/c/a/n/c/c/t;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/t;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/o;->a:Lc/c/a/n/c/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/o;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
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
    iget-object v0, p0, Lc/c/a/n/c/c/o;->a:Lc/c/a/n/c/c/t;

    invoke-static {v0}, Lc/c/a/n/c/c/t;->e(Lc/c/a/n/c/c/t;)Lb/r/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method
