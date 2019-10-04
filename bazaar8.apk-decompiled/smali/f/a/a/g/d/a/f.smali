.class public Lf/a/a/g/d/a/f;
.super Lf/a/a/g/d/a/b;
.source "ExitAction.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/g/d/a/b;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    iget-object p2, p0, Lf/a/a/g/d/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Ljava/lang/String;)V

    return-void
.end method
