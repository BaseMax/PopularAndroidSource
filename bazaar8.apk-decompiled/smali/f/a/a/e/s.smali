.class public Lf/a/a/e/s;
.super Ljava/lang/Object;
.source "InlineViewCreator.java"


# direct methods
.method public static a(Lf/a/a/e/h;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lf/a/a/d/a/b;

    invoke-direct {v1}, Lf/a/a/d/a/b;-><init>()V

    .line 2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lf/a/a/d/a/b;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lf/a/a/e/h;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4
    sget v3, Lf/a/a/f;->inline_view_group:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    sget v3, Lf/a/a/e;->viewGroup:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 6
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v4, "view"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-static {p1, v1}, Lf/a/a/e/s;->a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/e/b/n;

    .line 7
    invoke-virtual {v1, v2, v3, p0}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;
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

    .line 9
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 12
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    instance-of v3, v2, Lf/a/a/e/b/n;

    if-eqz v3, :cond_0

    .line 14
    check-cast v2, Lf/a/a/e/b/n;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
