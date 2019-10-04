.class public abstract Lc/c/a/n/u/b/a;
.super Lc/c/a/n/c/a/a;
.source "PostCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/u/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/n/c/a/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final va:Lc/c/a/n/u/b/a$a;


# instance fields
.field public Aa:Landroid/widget/ImageView;

.field public Ba:Landroid/text/TextWatcher;

.field public Ca:Ljava/lang/Integer;

.field public Da:Z

.field public Ea:I

.field public wa:Lc/c/a/n/u/b/e;

.field public xa:Landroid/widget/EditText;

.field public ya:Landroid/widget/TextView;

.field public za:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/u/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/u/b/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/u/b/a;->va:Lc/c/a/n/u/b/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/a;-><init>()V

    const v0, 0x7f1101f4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/u/b/a;->Ca:Ljava/lang/Integer;

    const v0, 0x7f1001d9

    .line 3
    iput v0, p0, Lc/c/a/n/u/b/a;->Ea:I

    return-void
.end method


# virtual methods
.method public Va()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/a;->Ca:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/g;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->jb()V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/u/b/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    const-string v0, "textView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "review"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8c

    rsub-int v1, p2, 0x8c

    .line 5
    sget-object v2, Lh/f/b/n;->a:Lh/f/b/n;

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100197

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "requireContext().resourc\u2026remainCommentPlaceHolder)"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 10
    array-length p2, v4

    invoke-static {v4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, v3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    const v0, 0x7f060049

    goto :goto_0

    :cond_0
    const v0, 0x7f060050

    .line 12
    :goto_0
    invoke-static {p2, v0}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a016a

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.etUserComment)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lc/c/a/n/u/b/a;->xa:Landroid/widget/EditText;

    const v0, 0x7f0a03af

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tvCommentCounter)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/c/a/n/u/b/a;->ya:Landroid/widget/TextView;

    const v0, 0x7f0a00d1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btSubmitPostComment)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/c/a/n/u/b/a;->za:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0393

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/c/a/n/u/b/a;->Aa:Landroid/widget/ImageView;

    .line 5
    iget-object p1, p0, Lc/c/a/n/u/b/a;->Aa:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance v0, Lc/c/a/n/u/b/b;

    invoke-direct {v0, p0}, Lc/c/a/n/u/b/b;-><init>(Lc/c/a/n/u/b/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lc/c/a/n/u/b/a;->za:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance v1, Lc/c/a/n/u/b/c;

    invoke-direct {v1, p0}, Lc/c/a/n/u/b/c;-><init>(Lc/c/a/n/u/b/a;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/u/b/a;->xa:Landroid/widget/EditText;

    const-string v1, "etReview"

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->db()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 8
    iget-object p1, p0, Lc/c/a/n/u/b/a;->xa:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    const/16 v2, 0x8c

    invoke-static {p1, v2}, Lc/c/a/d/b/e;->a(Landroid/widget/EditText;I)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->mb()Lc/c/a/n/u/b/d;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/b/a;->Ba:Landroid/text/TextWatcher;

    .line 10
    iget-object p1, p0, Lc/c/a/n/u/b/a;->xa:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/c/a/n/u/b/a;->Ba:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "btSubmitPost"

    .line 13
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public bb()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    return-void
.end method

.method public final cb()Lcom/google/android/material/button/MaterialButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/a;->za:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "btSubmitPost"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public db()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/u/b/a;->Ea:I

    return v0
.end method

.method public final eb()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/a;->xa:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "etReview"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public fb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/u/b/a;->Da:Z

    return v0
.end method

.method public final gb()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/a;->ya:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tvReviewCounter"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final hb()Lc/c/a/n/u/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/a;->wa:Lc/c/a/n/u/b/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract ib()V
.end method

.method public final jb()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Wa()Lb/r/F$b;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/u/b/e;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Lc/c/a/n/u/b/e;

    .line 4
    invoke-virtual {v0}, Lc/c/a/n/u/b/e;->e()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;-><init>(Lc/c/a/n/u/b/a;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 5
    iput-object v0, p0, Lc/c/a/n/u/b/a;->wa:Lc/c/a/n/u/b/e;

    return-void
.end method

.method public kb()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lc/c/a/n/u/b/a;->m(Z)V

    .line 2
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->b()Lb/w/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/w/j;->a(Lb/w/p;)V

    return-void
.end method

.method public abstract lb()V
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/n/u/b/a;->Da:Z

    return-void
.end method

.method public final mb()Lc/c/a/n/u/b/d;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/u/b/d;

    invoke-direct {v0, p0}, Lc/c/a/n/u/b/d;-><init>(Lc/c/a/n/u/b/a;)V

    return-object v0
.end method

.method public qa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/a;->Ba:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lc/c/a/n/u/b/a;->xa:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iput-object v2, p0, Lc/c/a/n/u/b/a;->Ba:Landroid/text/TextWatcher;

    goto :goto_0

    :cond_0
    const-string v0, "etReview"

    .line 4
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0}, Lc/c/a/n/c/a/a;->qa()V

    .line 6
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Qa()V

    return-void
.end method

.method public ta()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/a/a;->ta()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->lb()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lc/c/a/n/u/b/a;->m(Z)V

    return-void
.end method
