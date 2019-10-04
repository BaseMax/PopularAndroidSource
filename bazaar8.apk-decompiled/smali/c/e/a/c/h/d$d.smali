.class public Lc/e/a/c/h/d$d;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public final synthetic b:Lc/e/a/c/h/d;


# direct methods
.method public constructor <init>(Lc/e/a/c/h/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/h/d$d;->b:Lc/e/a/c/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/c/h/d;Lc/e/a/c/h/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/c/h/d$d;-><init>(Lc/e/a/c/h/d;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/c/h/d$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/h/d$d;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/d$d;->b:Lc/e/a/c/h/d;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Lc/e/a/c/h/a;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 4
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 7
    :cond_1
    move-object v0, p2

    check-cast v0, Lc/e/a/c/h/a;

    iget-object v1, p0, Lc/e/a/c/h/d$d;->b:Lc/e/a/c/h/d;

    invoke-static {v1}, Lc/e/a/c/h/d;->d(Lc/e/a/c/h/d;)Lc/e/a/c/h/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/c/h/a;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lc/e/a/c/h/d$d;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/d$d;->b:Lc/e/a/c/h/d;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lc/e/a/c/h/a;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lc/e/a/c/h/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/c/h/a;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/c/h/d$d;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
