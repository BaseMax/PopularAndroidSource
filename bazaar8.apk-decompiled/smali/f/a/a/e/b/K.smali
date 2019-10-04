.class public Lf/a/a/e/b/K;
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

.field public final synthetic c:Lf/a/a/e/b/L;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/K;->c:Lf/a/a/e/b/L;

    iput-object p2, p0, Lf/a/a/e/b/K;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p3, p0, Lf/a/a/e/b/K;->b:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/K;->a:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/K;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lf/a/a/e/b/K;->b:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/b/K;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v0}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
