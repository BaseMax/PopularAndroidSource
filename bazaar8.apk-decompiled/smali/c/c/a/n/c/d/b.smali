.class public final Lc/c/a/n/c/d/b;
.super Ljava/lang/Object;
.source "BaseRecyclerDaggerFragment.kt"

# interfaces
.implements Lc/c/a/n/c/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/f;->ib()Lc/c/a/n/c/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/d/f;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/d/b;->a:Lc/c/a/n/c/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/b;->a:Lc/c/a/n/c/d/f;

    invoke-virtual {v0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/c/d/b;->a:Lc/c/a/n/c/d/f;

    invoke-virtual {v1}, Lc/c/a/n/c/d/f;->Za()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/g;->c(Ljava/lang/Object;)V

    return-void
.end method
