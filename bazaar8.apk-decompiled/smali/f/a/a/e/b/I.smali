.class public Lf/a/a/e/b/I;
.super Ljava/lang/Object;
.source "SearchInflater.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lf/a/a/e/b/I;->d:Lf/a/a/e/b/L;

    iput-object p2, p0, Lf/a/a/e/b/I;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p3, p0, Lf/a/a/e/b/I;->b:Lf/a/a/e/g;

    iput-object p4, p0, Lf/a/a/e/b/I;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/I;->d:Lf/a/a/e/b/L;

    invoke-static {p1}, Lf/a/a/e/b/L;->b(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/o;

    move-result-object p1

    iget-object p2, p0, Lf/a/a/e/b/I;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a/a/g/d/a/o;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/I;->b:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p1

    iget-object p2, p0, Lf/a/a/e/b/I;->d:Lf/a/a/e/b/L;

    invoke-static {p2}, Lf/a/a/e/b/L;->b(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/o;

    move-result-object p2

    iget-object p3, p0, Lf/a/a/e/b/I;->c:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
