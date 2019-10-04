.class public abstract Lf/a/a/g/d/h;
.super Lf/a/a/g/d/a;
.source "PageActionCallListener.java"


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/a;-><init>(Lf/a/a/e/g;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf/a/a/g/d/a;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a/a/g/d/d;->a(Ljava/lang/String;)V

    return-void
.end method
