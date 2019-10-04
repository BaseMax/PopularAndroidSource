.class public Lb/D/q;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lb/D/E$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/D/t;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lb/D/t;


# direct methods
.method public constructor <init>(Lb/D/t;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/D/q;->c:Lb/D/t;

    iput-object p2, p0, Lb/D/q;->a:Landroid/view/View;

    iput-object p3, p0, Lb/D/q;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/D/E;)V
    .locals 0

    return-void
.end method

.method public b(Lb/D/E;)V
    .locals 0

    return-void
.end method

.method public c(Lb/D/E;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0}, Lb/D/E;->b(Lb/D/E$c;)Lb/D/E;

    .line 2
    iget-object p1, p0, Lb/D/q;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lb/D/q;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    iget-object v2, p0, Lb/D/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lb/D/E;)V
    .locals 0

    return-void
.end method
