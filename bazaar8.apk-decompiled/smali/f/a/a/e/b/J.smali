.class public Lf/a/a/e/b/J;
.super Ljava/lang/Object;
.source "SearchInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/L;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatEditText;

.field public final synthetic b:Lf/a/a/e/g;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lf/a/a/e/b/L;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/J;->d:Lf/a/a/e/b/L;

    iput-object p2, p0, Lf/a/a/e/b/J;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p3, p0, Lf/a/a/e/b/J;->b:Lf/a/a/e/g;

    iput-object p4, p0, Lf/a/a/e/b/J;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/J;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/J;->d:Lf/a/a/e/b/L;

    invoke-static {p1}, Lf/a/a/e/b/L;->b(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/o;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lf/a/a/e/b/J;->d:Lf/a/a/e/b/L;

    invoke-static {p1}, Lf/a/a/e/b/L;->b(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/o;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/b/J;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/a/a/g/d/a/o;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lf/a/a/e/b/J;->b:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/b/J;->d:Lf/a/a/e/b/L;

    invoke-static {v0}, Lf/a/a/e/b/L;->b(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/o;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/J;->c:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/J;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 6
    iget-object p1, p0, Lf/a/a/e/b/J;->b:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/b/J;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v0}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
