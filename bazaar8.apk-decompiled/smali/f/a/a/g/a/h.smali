.class public Lf/a/a/g/a/h;
.super Ljava/lang/Object;
.source "AddressPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/a/n;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/d/a/b;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatEditText;

.field public final synthetic c:Lf/a/a/g/a/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/n;Lf/a/a/g/d/a/b;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/h;->c:Lf/a/a/g/a/n;

    iput-object p2, p0, Lf/a/a/g/a/h;->a:Lf/a/a/g/d/a/b;

    iput-object p3, p0, Lf/a/a/g/a/h;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/a/a/g/a/h;->c:Lf/a/a/g/a/n;

    invoke-virtual {p1}, Lf/a/a/e/b/b/A;->d()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/g/a/h;->a:Lf/a/a/g/d/a/b;

    iget-object v1, p0, Lf/a/a/g/a/h;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1, v0, v1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    return-void
.end method
