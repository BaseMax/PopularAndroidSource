.class public final Lc/c/a/d/d/c;
.super Ljava/lang/Object;
.source "MessageManager.kt"


# instance fields
.field public final a:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/c/h/g;

    invoke-direct {v0}, Lc/c/a/c/h/g;-><init>()V

    iput-object v0, p0, Lc/c/a/d/d/c;->a:Lc/c/a/c/h/g;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/d/d/c;->a:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/d/d/c;->a:Lc/c/a/c/h/g;

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method
