.class public final Lcab/snapp/snappuikit/c/c;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v0}, Lcab/snapp/snappuikit/c/c;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 21
    iput p1, p0, Lcab/snapp/snappuikit/c/c;->a:I

    .line 22
    iput-boolean p2, p0, Lcab/snapp/snappuikit/c/c;->b:Z

    .line 23
    iput-boolean p3, p0, Lcab/snapp/snappuikit/c/c;->c:Z

    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SpacingItemDecoration can only be used with a LinearLayoutManager."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 30
    iget p4, p0, Lcab/snapp/snappuikit/c/c;->a:I

    if-gtz p4, :cond_0

    return-void

    .line 35
    :cond_0
    iget-boolean p4, p0, Lcab/snapp/snappuikit/c/c;->b:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    if-lez p4, :cond_2

    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    if-lez p4, :cond_4

    .line 37
    :cond_2
    invoke-static {p3}, Lcab/snapp/snappuikit/c/c;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    if-ne p4, v0, :cond_3

    .line 39
    iget p4, p0, Lcab/snapp/snappuikit/c/c;->a:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 42
    :cond_3
    iget p4, p0, Lcab/snapp/snappuikit/c/c;->a:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 46
    :cond_4
    :goto_0
    iget-boolean p4, p0, Lcab/snapp/snappuikit/c/c;->c:Z

    if-eqz p4, :cond_6

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 1060
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    if-ne p2, p4, :cond_6

    .line 48
    invoke-static {p3}, Lcab/snapp/snappuikit/c/c;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 50
    iget p2, p0, Lcab/snapp/snappuikit/c/c;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 53
    :cond_5
    iget p2, p0, Lcab/snapp/snappuikit/c/c;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    return-void
.end method
