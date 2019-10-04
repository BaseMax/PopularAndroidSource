.class public Lf/a/a/e/a/n;
.super Ljava/lang/Object;
.source "ViewChangeSet.java"

# interfaces
.implements Lf/a/a/e/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/a/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/a/o;


# direct methods
.method public constructor <init>(Lf/a/a/e/a/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/n;->a:Lf/a/a/e/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;Landroid/view/View;Lf/a/a/e/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lf/a/a/e/a/p;",
            ">;",
            "Landroid/view/View;",
            "Lf/a/a/e/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/e/a/p;

    .line 2
    invoke-virtual {v0, p2, p3}, Lf/a/a/e/a/p;->a(Landroid/view/View;Lf/a/a/e/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method
