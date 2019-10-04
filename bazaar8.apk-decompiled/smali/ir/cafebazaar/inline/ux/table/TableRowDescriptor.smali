.class public Lir/cafebazaar/inline/ux/table/TableRowDescriptor;
.super Ljava/lang/Object;
.source "TableRowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lf/a/a/d/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "showDivider"

    .line 2
    iput-object v0, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->a:Ljava/lang/String;

    const-string v1, "dividerColor"

    .line 3
    iput-object v1, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->b:Ljava/lang/String;

    const-string v2, "height"

    .line 4
    iput-object v2, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->c:Ljava/lang/String;

    const/16 v3, 0x9

    .line 5
    iput v3, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->d:I

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->f:Z

    .line 7
    sget-object v3, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->FIX:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    iput-object v3, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->h:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    .line 8
    invoke-virtual {p0, p1, p2}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->e:Ljava/util/List;

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->f:Z

    .line 11
    :cond_0
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->g:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->g:Ljava/lang/String;

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->g:Ljava/lang/String;

    .line 15
    :cond_1
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->h:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 7
    iget-object v0, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a(Lf/a/a/e/g;)I
    .locals 2

    .line 9
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    .line 12
    :goto_0
    iget-object v1, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 13
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    if-nez v1, :cond_1

    .line 14
    sget p1, Lf/a/a/b;->gray_light:I

    invoke-static {v0, p1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 15
    :cond_1
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    return p1

    .line 16
    :cond_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lf/a/a/d/f;",
            ")",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    instance-of v3, v2, Lf/a/a/e/b/n;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lf/a/a/e/b/n;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b()Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->h:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->f:Z

    return v0
.end method
