.class public final Lc/c/a/n/j/c/k;
.super Ljava/lang/Object;
.source "VideoDownloadListViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/c/l;-><init>(Lc/c/a/e/d/h/e/a/c;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/b/d/o;Landroid/content/Context;)V
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
.field public final synthetic a:Lc/c/a/n/j/c/l;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/c/l;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/c/k;->a:Lc/c/a/n/j/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/k;->a(Ljava/util/Map;)V

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
    iget-object v0, p0, Lc/c/a/n/j/c/k;->a:Lc/c/a/n/j/c/l;

    invoke-static {v0}, Lc/c/a/n/j/c/l;->b(Lc/c/a/n/j/c/l;)Lb/r/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method