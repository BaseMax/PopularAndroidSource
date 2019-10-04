.class public Lf/a/a/d/a/a/b/w;
.super Lf/a/a/d/a/a/b/i;
.source "TableRowFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/e/b/P;

    invoke-direct {v0}, Lf/a/a/e/b/P;-><init>()V

    .line 2
    new-instance v1, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-direct {v1, p1, p2}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;-><init>(Lorg/w3c/dom/Element;Lf/a/a/d/f;)V

    invoke-virtual {v0, v1}, Lf/a/a/e/b/P;->a(Lir/cafebazaar/inline/ux/table/TableRowDescriptor;)V

    return-object v0
.end method
