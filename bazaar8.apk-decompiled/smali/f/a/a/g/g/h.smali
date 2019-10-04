.class public Lf/a/a/g/g/h;
.super Lf/a/a/g/c;
.source "RequestPermissionsDialog.java"


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/g/g/e;",
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
            "Lf/a/a/g/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/c;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p2, p0, Lf/a/a/g/g/h;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/g/h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/g/h;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/g/g/h;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/g/g/h;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lf/a/a/g/g/h;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lf/a/a/g/g/h;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lf/a/a/g/g/h;)Lb/b/a/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lf/a/a/g/g/h;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lf/a/a/g/g/h;)Lb/b/a/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lb/b/a/l;
    .locals 10

    .line 2
    new-instance v0, Lb/b/a/l$a;

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    sget v2, Lf/a/a/h;->DialogInline:I

    invoke-direct {v0, v1, v2}, Lb/b/a/l$a;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    sget v2, Lf/a/a/f;->inline_permission_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v4

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v5

    invoke-interface {v5}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/platform/InlineApplication;->c()Ljava/lang/String;

    move-result-object v5

    sget v6, Lf/a/a/e;->icon:I

    .line 6
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sget v7, Lf/a/a/d;->ic_inline:I

    .line 7
    invoke-virtual {v4, v5, v6, v7}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 8
    sget v4, Lf/a/a/e;->text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v5

    invoke-interface {v5}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v5

    sget v6, Lf/a/a/g;->inline_app_request_permission:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v8

    invoke-interface {v8}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v8

    invoke-virtual {v8}, Lir/cafebazaar/inline/platform/InlineApplication;->e()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 11
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget v4, Lf/a/a/e;->allow_button:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lf/a/a/g/g/f;

    invoke-direct {v5, p0}, Lf/a/a/g/g/f;-><init>(Lf/a/a/g/g/h;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget v4, Lf/a/a/e;->deny_button:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lf/a/a/g/g/g;

    invoke-direct {v5, p0}, Lf/a/a/g/g/g;-><init>(Lf/a/a/g/g/h;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget v4, Lf/a/a/e;->list:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 16
    iget-object v5, p0, Lf/a/a/g/g/h;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/a/a/g/g/e;

    .line 17
    sget v7, Lf/a/a/f;->inline_permission_dialog_item:I

    invoke-virtual {v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 18
    sget v8, Lf/a/a/e;->title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v6}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v9

    invoke-virtual {v9}, Lir/cafebazaar/inline/ux/permission/Permission;->h()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 19
    sget v8, Lf/a/a/e;->icon:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v6}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v9

    invoke-virtual {v9}, Lir/cafebazaar/inline/ux/permission/Permission;->g()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    sget v8, Lf/a/a/e;->description:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v6}, Lf/a/a/g/g/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, v2}, Lb/b/a/l$a;->b(Landroid/view/View;)Lb/b/a/l$a;

    .line 23
    invoke-virtual {v0}, Lb/b/a/l$a;->a()Lb/b/a/l;

    move-result-object v0

    return-object v0
.end method
