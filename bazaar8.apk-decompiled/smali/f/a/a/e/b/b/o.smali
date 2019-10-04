.class public Lf/a/a/e/b/b/o;
.super Lf/a/a/e/b/b/A;
.source "ChoicesPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/b/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/e/b/b/A<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/d/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/g;",
            "Ljava/util/List<",
            "Lf/a/a/d/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/e/b/b/A;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p2, p0, Lf/a/a/e/b/b/o;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/b/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/b/o;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Lf/a/a/e/g;)Landroid/view/View;
    .locals 8

    .line 2
    sget v0, Lf/a/a/f;->inline_choices_popup:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    sget v0, Lf/a/a/e;->list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 4
    new-instance v2, Lf/a/a/e/b/b/o$a;

    invoke-direct {v2, p0}, Lf/a/a/e/b/b/o$a;-><init>(Lf/a/a/e/b/b/o;)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    new-instance v3, Lf/a/a/e/b/b/m;

    invoke-direct {v3, p0, v2}, Lf/a/a/e/b/b/m;-><init>(Lf/a/a/e/b/b/o;Lf/a/a/e/b/b/o$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    sget v0, Lf/a/a/e;->search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 8
    iget-object v3, p0, Lf/a/a/e/b/b/o;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    const/16 p2, 0x8

    .line 9
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x1

    new-array v5, v4, [[I

    const/4 v6, 0x0

    new-array v7, v6, [I

    aput-object v7, v5, v6

    new-array v4, v4, [I

    const v7, -0xbbbbbc

    aput v7, v4, v6

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 11
    invoke-static {v0, v3}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 12
    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lf/a/a/d;->ic_search:I

    invoke-static {p2, v3}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    invoke-static {p2, v7}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 14
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance p2, Lf/a/a/e/b/b/n;

    invoke-direct {p2, p0, v2}, Lf/a/a/e/b/b/n;-><init>(Lf/a/a/e/b/b/o;Lf/a/a/e/b/b/o$a;)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-object p1
.end method
