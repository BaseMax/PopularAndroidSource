.class public Lf/a/a/g/a/n;
.super Lf/a/a/e/b/b/A;
.source "AddressPopup.java"

# interfaces
.implements Lf/a/a/g/a/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/a/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/e/b/b/A<",
        "Lf/a/a/g/a/a;",
        ">;",
        "Lf/a/a/g/a/p;"
    }
.end annotation


# instance fields
.field public d:Lf/a/a/g/a/d;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lf/a/a/g/a/o;

.field public i:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

.field public j:Lf/a/a/g/a/n$a;

.field public k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/e/b/b/A;-><init>(Lf/a/a/e/g;)V

    .line 2
    new-instance p1, Lf/a/a/g/a/e;

    invoke-direct {p1, p0}, Lf/a/a/g/a/e;-><init>(Lf/a/a/g/a/n;)V

    iput-object p1, p0, Lf/a/a/g/a/n;->j:Lf/a/a/g/a/n$a;

    .line 3
    new-instance p1, Lf/a/a/g/a/f;

    invoke-direct {p1, p0}, Lf/a/a/g/a/f;-><init>(Lf/a/a/g/a/n;)V

    iput-object p1, p0, Lf/a/a/g/a/n;->k:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance p1, Lf/a/a/g/a/q;

    invoke-direct {p1}, Lf/a/a/g/a/q;-><init>()V

    iput-object p1, p0, Lf/a/a/g/a/n;->h:Lf/a/a/g/a/o;

    .line 5
    iget-object p1, p0, Lf/a/a/g/a/n;->h:Lf/a/a/g/a/o;

    invoke-interface {p1, p0}, Lf/a/a/g/a/o;->a(Lf/a/a/g/a/p;)V

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/a/n;)Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/a/n;->i:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/a/n;->h:Lf/a/a/g/a/o;

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/g/a/n;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/a/n;->h()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Lf/a/a/e/g;)Landroid/view/View;
    .locals 1

    .line 2
    sget p2, Lf/a/a/f;->inline_address_popup:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lf/a/a/g/a/n;->c(Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lf/a/a/g/a/n;->h:Lf/a/a/g/a/o;

    invoke-interface {p2}, Lf/a/a/g/a/o;->b()V

    return-object p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    .line 5
    sget v0, Lf/a/a/e;->add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    sget v1, Lf/a/a/e;->addIcon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    invoke-virtual {p0}, Lf/a/a/g/a/n;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lf/a/a/g;->new_address:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lf/a/a/d;->ic_add:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, -0x1

    .line 9
    invoke-static {v0, v2}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 10
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    sget v0, Lf/a/a/e;->addButtonContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf/a/a/g/a/g;

    invoke-direct {v0, p0}, Lf/a/a/g/a/g;-><init>(Lf/a/a/g/a/n;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lf/a/a/g/a/a;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->c()Lf/a/a/e/b/b/A$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/a/a/e/b/b/A$a;->a(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lf/a/a/g/a/n;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    sget v1, Lf/a/a/e;->address_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 38
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    .line 19
    iget-object v0, p0, Lf/a/a/g/a/n;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v3, Lf/a/a/e;->title_content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 23
    iget-object v3, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v4, Lf/a/a/e;->title_delete:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 24
    iget-object v4, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v5, Lf/a/a/e;->title_divider:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 27
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/g/a/a;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/a/n;->e:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 15
    iget-object v0, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lf/a/a/g/a/n;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lf/a/a/g/a/n;->d:Lf/a/a/g/a/d;

    invoke-virtual {v0, p1}, Lf/a/a/g/a/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 4

    .line 2
    sget v0, Lf/a/a/e;->list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 3
    new-instance v0, Lf/a/a/g/a/d;

    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lf/a/a/g/a/n;->j:Lf/a/a/g/a/n$a;

    invoke-direct {v0, v1, v2, v3}, Lf/a/a/g/a/d;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/g/a/n$a;)V

    iput-object v0, p0, Lf/a/a/g/a/n;->d:Lf/a/a/g/a/d;

    .line 4
    iget-object v0, p0, Lf/a/a/g/a/n;->d:Lf/a/a/g/a/d;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 2
    sget v0, Lf/a/a/e;->list_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/a/n;->e:Landroid/view/View;

    .line 3
    sget v0, Lf/a/a/e;->title_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    .line 4
    sget v0, Lf/a/a/e;->address_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    .line 5
    invoke-virtual {p0, p1}, Lf/a/a/g/a/n;->b(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0, p1}, Lf/a/a/g/a/n;->a(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lf/a/a/g/a/n;->g()V

    .line 8
    invoke-virtual {p0}, Lf/a/a/g/a/n;->f()V

    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    sget v1, Lf/a/a/e;->address_accept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    sget v2, Lf/a/a/e;->address_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    .line 3
    iget-object v2, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    sget v3, Lf/a/a/e;->address_accept_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    iget-object v3, p0, Lf/a/a/g/a/n;->g:Landroid/view/View;

    sget v4, Lf/a/a/e;->address_voice_btn:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 5
    new-instance v4, Lir/cafebazaar/inline/ux/flow/actions/SpeechRecognizeAction;

    invoke-direct {v4, v1}, Lir/cafebazaar/inline/ux/flow/actions/SpeechRecognizeAction;-><init>(Landroid/widget/EditText;)V

    .line 6
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v5

    invoke-interface {v5}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lf/a/a/b;->dark_green:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v5

    invoke-interface {v5}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lf/a/a/d;->ic_check:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v6

    invoke-interface {v6}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lf/a/a/b;->dark_green:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    const/4 v6, 0x0

    .line 9
    invoke-virtual {v2, v6, v6, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    new-instance v2, Lf/a/a/g/a/l;

    invoke-direct {v2, p0, v1}, Lf/a/a/g/a/l;-><init>(Lf/a/a/g/a/n;Landroidx/appcompat/widget/AppCompatEditText;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Lf/a/a/g/a/m;

    invoke-direct {v0, p0, v4, v1}, Lf/a/a/g/a/m;-><init>(Lf/a/a/g/a/n;Lf/a/a/g/d/a/b;Landroidx/appcompat/widget/AppCompatEditText;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final g()V
    .locals 10

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v1, Lf/a/a/e;->title_accept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v2, Lf/a/a/e;->title_delete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v3, Lf/a/a/e;->title_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    .line 4
    iget-object v3, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v4, Lf/a/a/e;->title_delete_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iget-object v4, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v5, Lf/a/a/e;->title_accept_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    iget-object v5, p0, Lf/a/a/g/a/n;->f:Landroid/view/View;

    sget v6, Lf/a/a/e;->title_voice_btn:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    new-instance v6, Lir/cafebazaar/inline/ux/flow/actions/SpeechRecognizeAction;

    invoke-direct {v6, v2}, Lir/cafebazaar/inline/ux/flow/actions/SpeechRecognizeAction;-><init>(Landroid/widget/EditText;)V

    .line 8
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v7

    invoke-interface {v7}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lf/a/a/b;->dark_green:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v7

    invoke-interface {v7}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lf/a/a/d;->ic_check:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v8

    invoke-interface {v8}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lf/a/a/b;->dark_green:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v7, v8}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    const/4 v8, 0x0

    .line 11
    invoke-virtual {v4, v8, v8, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v4, -0xbbbbbc

    .line 12
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {p0}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object v7

    invoke-interface {v7}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lf/a/a/d;->ic_delete:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 14
    invoke-static {v7, v4}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 15
    invoke-virtual {v3, v8, v8, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 16
    new-instance v3, Lf/a/a/g/a/h;

    invoke-direct {v3, p0, v6, v2}, Lf/a/a/g/a/h;-><init>(Lf/a/a/g/a/n;Lf/a/a/g/d/a/b;Landroidx/appcompat/widget/AppCompatEditText;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v3, Lf/a/a/g/a/i;

    invoke-direct {v3, p0, v2}, Lf/a/a/g/a/i;-><init>(Lf/a/a/g/a/n;Landroidx/appcompat/widget/AppCompatEditText;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v0, Lf/a/a/g/a/k;

    invoke-direct {v0, p0}, Lf/a/a/g/a/k;-><init>(Lf/a/a/g/a/n;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/a/n;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/t/a/b;->a(Landroid/content/Context;)Lb/t/a/b;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/a/n;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/t/a/b;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
