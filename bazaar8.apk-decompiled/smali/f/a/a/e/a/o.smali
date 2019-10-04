.class public Lf/a/a/e/a/o;
.super Ljava/lang/Object;
.source "ViewChangeSet.java"

# interfaces
.implements Lf/a/a/d/a;


# instance fields
.field public a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lf/a/a/e/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lf/a/a/e/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/e/a/n;

    invoke-direct {v0, p0}, Lf/a/a/e/a/n;-><init>(Lf/a/a/e/a/o;)V

    iput-object v0, p0, Lf/a/a/e/a/o;->b:Lf/a/a/e/a/c;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/a/e/a/o;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lf/a/a/e/a/p;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/o;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public a(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lf/a/a/e/a/o;->b:Lf/a/a/e/a/c;

    iget-object v1, p0, Lf/a/a/e/a/o;->a:Ljava/util/Collection;

    invoke-interface {v0, v1, p1, p2}, Lf/a/a/e/a/c;->a(Ljava/util/Collection;Landroid/view/View;Lf/a/a/e/g;)V

    return-void
.end method

.method public a(Lf/a/a/e/a/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lf/a/a/e/a/o;->b:Lf/a/a/e/a/c;

    return-void
.end method

.method public a(Lf/a/a/e/a/p;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/e/a/o;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lf/a/a/e/a/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/o;->a:Ljava/util/Collection;

    return-void
.end method
