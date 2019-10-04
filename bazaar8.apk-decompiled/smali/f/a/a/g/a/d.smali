.class public Lf/a/a/g/a/d;
.super Landroid/widget/BaseAdapter;
.source "AddressListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/g/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lf/a/a/g/a/n$a;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/g/a/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lf/a/a/g/a/a;",
            ">;",
            "Lf/a/a/g/a/n$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/a/d;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf/a/a/g/a/d;->a:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lf/a/a/g/a/d;->b:Lf/a/a/g/a/n$a;

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/a/d;)Lf/a/a/g/a/n$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/a/d;->b:Lf/a/a/g/a/n$a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/g/a/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lf/a/a/g/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lf/a/a/g/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lf/a/a/g/a/d;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lf/a/a/g/a/d;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lf/a/a/f;->inline_address_popup_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lf/a/a/g/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/g/a/a;

    .line 3
    sget p3, Lf/a/a/e;->clickable_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 4
    sget v1, Lf/a/a/e;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    sget v2, Lf/a/a/e;->raw_address:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    sget v3, Lf/a/a/e;->edit:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    iget-object v4, p0, Lf/a/a/g/a/d;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lf/a/a/d;->ic_edit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, -0x777778

    .line 8
    invoke-static {v4, v5}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 9
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p1}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lf/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x32

    if-le v1, v4, :cond_1

    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "%s ..."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lf/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    new-instance v0, Lf/a/a/g/a/b;

    invoke-direct {v0, p0, p1}, Lf/a/a/g/a/b;-><init>(Lf/a/a/g/a/d;Lf/a/a/g/a/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance p3, Lf/a/a/g/a/c;

    invoke-direct {p3, p0, p1}, Lf/a/a/g/a/c;-><init>(Lf/a/a/g/a/d;Lf/a/a/g/a/a;)V

    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
