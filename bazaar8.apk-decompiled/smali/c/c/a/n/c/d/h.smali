.class public final Lc/c/a/n/c/d/h;
.super Ljava/lang/Object;
.source "BaseRecyclerViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/g;->a(Landroidx/lifecycle/LiveData;Lh/f/a/b;)V
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
.field public final synthetic a:Lc/c/a/n/c/d/g;

.field public final synthetic b:Lh/f/a/b;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/g;Lh/f/a/b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/d/h;->a:Lc/c/a/n/c/d/g;

    iput-object p2, p0, Lc/c/a/n/c/d/h;->b:Lh/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/h;->a:Lc/c/a/n/c/d/g;

    iget-object v1, p0, Lc/c/a/n/c/d/h;->b:Lh/f/a/b;

    invoke-interface {v1, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method
