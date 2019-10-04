.class public Lf/a/a/e/a/g;
.super Ljava/lang/Object;
.source "FooterActionChanger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/a/h;->b(Landroid/view/View;Lf/a/a/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatButton;

.field public final synthetic c:Lf/a/a/e/a/h;


# direct methods
.method public constructor <init>(Lf/a/a/e/a/h;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/g;->c:Lf/a/a/e/a/h;

    iput-object p2, p0, Lf/a/a/e/a/g;->a:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/e/a/g;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/a/a/e/a/g;->a:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/e/a/g;->c:Lf/a/a/e/a/h;

    invoke-static {v0}, Lf/a/a/e/a/h;->a(Lf/a/a/e/a/h;)Lf/a/a/g/d/a/b;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/a/g;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0, v1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    return-void
.end method
