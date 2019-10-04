.class public Lb/b/g/V$a;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/g/V;


# direct methods
.method public constructor <init>(Lb/b/g/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/V$a;->a:Lb/b/g/V;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/V$a;->a:Lb/b/g/V;

    iget-object v0, v0, Lb/b/g/V;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/V$a;->a:Lb/b/g/V;

    iget-object v0, v0, Lb/b/g/V;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lb/b/g/V$c;

    invoke-virtual {p1}, Lb/b/g/V$c;->a()Lb/b/a/a$c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lb/b/g/V$a;->a:Lb/b/g/V;

    invoke-virtual {p0, p1}, Lb/b/g/V$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/a$c;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lb/b/g/V;->a(Lb/b/a/a$c;Z)Lb/b/g/V$c;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    move-object p3, p2

    check-cast p3, Lb/b/g/V$c;

    invoke-virtual {p0, p1}, Lb/b/g/V$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/a$c;

    invoke-virtual {p3, p1}, Lb/b/g/V$c;->a(Lb/b/a/a$c;)V

    :goto_0
    return-object p2
.end method
