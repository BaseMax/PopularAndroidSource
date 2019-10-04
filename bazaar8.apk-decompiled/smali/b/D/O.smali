.class public Lb/D/O;
.super Lb/D/W;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lb/D/Q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/D/W;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lb/D/O;
    .locals 0

    .line 1
    invoke-static {p0}, Lb/D/W;->c(Landroid/view/View;)Lb/D/W;

    move-result-object p0

    check-cast p0, Lb/D/O;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/D/W;->a:Lb/D/W$a;

    invoke-virtual {v0, p1}, Lb/D/W$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/W;->a:Lb/D/W$a;

    invoke-virtual {v0, p1}, Lb/D/W$a;->b(Landroid/view/View;)V

    return-void
.end method
