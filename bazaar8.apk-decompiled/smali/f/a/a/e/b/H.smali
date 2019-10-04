.class public Lf/a/a/e/b/H;
.super Ljava/lang/Object;
.source "SearchInflater.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/L;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatEditText;

.field public final synthetic c:Lf/a/a/e/g;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lf/a/a/e/b/L;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/H;->e:Lf/a/a/e/b/L;

    iput-object p2, p0, Lf/a/a/e/b/H;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p3, p0, Lf/a/a/e/b/H;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p4, p0, Lf/a/a/e/b/H;->c:Lf/a/a/e/g;

    iput-object p5, p0, Lf/a/a/e/b/H;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/H;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/H;->a:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lf/a/a/e/b/H;->e:Lf/a/a/e/b/L;

    invoke-static {p1}, Lf/a/a/e/b/L;->a(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/p;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lf/a/a/e/b/H;->e:Lf/a/a/e/b/L;

    invoke-static {p1}, Lf/a/a/e/b/L;->a(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/p;

    move-result-object p1

    iget-object v1, p0, Lf/a/a/e/b/H;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lf/a/a/g/d/a/p;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lf/a/a/e/b/H;->c:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p1

    iget-object v1, p0, Lf/a/a/e/b/H;->e:Lf/a/a/e/b/L;

    invoke-static {v1}, Lf/a/a/e/b/L;->a(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/p;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/e/b/H;->d:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lf/a/a/e/b/H;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
