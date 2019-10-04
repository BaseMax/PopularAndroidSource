.class public final Lme/a/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x1

.field public static final ORIENTATION_VERTICAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUpOverScroll(Landroid/widget/GridView;)Lme/a/a/a/a/b;
    .locals 2

    .line 56
    new-instance v0, Lme/a/a/a/a/h;

    new-instance v1, Lme/a/a/a/a/a/a;

    invoke-direct {v1, p0}, Lme/a/a/a/a/a/a;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lme/a/a/a/a/h;-><init>(Lme/a/a/a/a/a/c;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/HorizontalScrollView;)Lme/a/a/a/a/b;
    .locals 2

    .line 64
    new-instance v0, Lme/a/a/a/a/a;

    new-instance v1, Lme/a/a/a/a/a/b;

    invoke-direct {v1, p0}, Lme/a/a/a/a/a/b;-><init>(Landroid/widget/HorizontalScrollView;)V

    invoke-direct {v0, v1}, Lme/a/a/a/a/a;-><init>(Lme/a/a/a/a/a/c;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ListView;)Lme/a/a/a/a/b;
    .locals 2

    .line 52
    new-instance v0, Lme/a/a/a/a/h;

    new-instance v1, Lme/a/a/a/a/a/a;

    invoke-direct {v1, p0}, Lme/a/a/a/a/a/a;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lme/a/a/a/a/h;-><init>(Lme/a/a/a/a/a/c;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ScrollView;)Lme/a/a/a/a/b;
    .locals 2

    .line 60
    new-instance v0, Lme/a/a/a/a/h;

    new-instance v1, Lme/a/a/a/a/a/e;

    invoke-direct {v1, p0}, Lme/a/a/a/a/a/e;-><init>(Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lme/a/a/a/a/h;-><init>(Lme/a/a/a/a/a/c;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lme/a/a/a/a/b;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 43
    new-instance p1, Lme/a/a/a/a/a;

    new-instance v0, Lme/a/a/a/a/a/d;

    invoke-direct {v0, p0}, Lme/a/a/a/a/a/d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v0}, Lme/a/a/a/a/a;-><init>(Lme/a/a/a/a/a/c;)V

    return-object p1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_1
    new-instance p1, Lme/a/a/a/a/h;

    new-instance v0, Lme/a/a/a/a/a/d;

    invoke-direct {v0, p0}, Lme/a/a/a/a/a/d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v0}, Lme/a/a/a/a/h;-><init>(Lme/a/a/a/a/a/c;)V

    return-object p1
.end method

.method public static setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lme/a/a/a/a/b;
    .locals 2

    .line 90
    new-instance v0, Lme/a/a/a/a/a;

    new-instance v1, Lme/a/a/a/a/a/g;

    invoke-direct {v1, p0}, Lme/a/a/a/a/a/g;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-direct {v0, v1}, Lme/a/a/a/a/a;-><init>(Lme/a/a/a/a/a/c;)V

    return-object v0
.end method

.method public static setUpStaticOverScroll(Landroid/view/View;I)Lme/a/a/a/a/b;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    new-instance p1, Lme/a/a/a/a/a;

    new-instance v0, Lme/a/a/a/a/a/f;

    invoke-direct {v0, p0}, Lme/a/a/a/a/a/f;-><init>(Landroid/view/View;)V

    invoke-direct {p1, v0}, Lme/a/a/a/a/a;-><init>(Lme/a/a/a/a/a/c;)V

    return-object p1

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_1
    new-instance p1, Lme/a/a/a/a/h;

    new-instance v0, Lme/a/a/a/a/a/f;

    invoke-direct {v0, p0}, Lme/a/a/a/a/a/f;-><init>(Landroid/view/View;)V

    invoke-direct {p1, v0}, Lme/a/a/a/a/h;-><init>(Lme/a/a/a/a/a/c;)V

    return-object p1
.end method
