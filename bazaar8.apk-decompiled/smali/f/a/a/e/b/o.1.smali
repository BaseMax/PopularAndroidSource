.class public Lf/a/a/e/b/o;
.super Ljava/lang/Object;
.source "FooterInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/q;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lf/a/a/e/b/q;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/q;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/o;->b:Lf/a/a/e/b/q;

    iput-object p2, p0, Lf/a/a/e/b/o;->a:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/o;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/o;->b:Lf/a/a/e/b/q;

    invoke-static {v1}, Lf/a/a/e/b/q;->a(Lf/a/a/e/b/q;)Lf/a/a/e/b/q$a;

    move-result-object v1

    invoke-static {v1}, Lf/a/a/e/b/q$a;->b(Lf/a/a/e/b/q$a;)Lf/a/a/g/d/a/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    return-void
.end method
